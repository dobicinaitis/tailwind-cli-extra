#!/bin/bash
# Utility functions used within GitHub action workflows.

REPO_BASE_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")"/.. &>/dev/null && pwd)

# Check if a variable is set and not empty.
check_variable() {
    local variable=$1

    if [[ -z "$variable" ]]; then
        echo "Variable [$variable] is not set or is empty."
        exit 1
    fi

    echo "Variable [$variable] is set."
}

# Check if a string is a MAJOR.MINOR.PATCH formatter version number.
check_version_number() {
    local version=$1
    local regex="^[0-9]+\.[0-9]+\.[0-9]+$"

    if [[ ! $version =~ $regex ]]; then
        echo "Input [$version] is not a valid MAJOR.MINOR.PATCH format version number."
        exit 1
    fi

    echo "Input [$version] is a valid MAJOR.MINOR.PATCH format version number."
}

# Compares two SemVer release version numbers and exports the results to environment variables.
# Usage: compare_versions foo 1.0.0 2.0.0
# Result: $FOO_VERSION_CHANGED = true, $FOO_VERSION_CHANGE_LEVEL = major
compare_versions() {
    local prefix=$1
    local current_version=$2
    local new_version=$3

    echo "Comparing versions [$current_version] and [$new_version]."

    # Check if version numbers are valid
    check_version_number "$current_version"
    check_version_number "$new_version"

    if [ "$current_version" = "$new_version" ]; then
        echo "Versions are identical"
        export_version_compare_results "$prefix" false
        return
    fi

    # Split version numbers into arrays
    IFS='.' read -ra current_parts <<<"$current_version"
    IFS='.' read -ra new_parts <<<"$new_version"

    # Compare major version
    if [ "${current_parts[0]}" -lt "${new_parts[0]}" ]; then
        echo "Major version changed"
        export_version_compare_results "$prefix" true major
        return
    fi

    # Compare minor version
    if [ "${current_parts[1]}" -lt "${new_parts[1]}" ]; then
        echo "Minor version changed"
        export_version_compare_results "$prefix" true minor
        return
    fi

    # Compare patch version
    if [ "${current_parts[2]}" -lt "${new_parts[2]}" ]; then
        echo "Patch version changed"
        export_version_compare_results "$prefix" true patch
        return
    fi

    echo "Something went wrong. Version increment level could not be detected."
    exit 1
}

# Export compare_versions() results to environment variables
export_version_compare_results() {
    local prefix=$1
    local changed=$2 # true, false
    local level=$3   # major, minor, patch

    if [ -n "$prefix" ]; then
        prefix="${prefix}_"
    fi

    export "${prefix^^}"VERSION_CHANGED="$changed"
    export "${prefix^^}"VERSION_CHANGE_LEVEL="$level"
}

semver_increment_to_conventional_commit_type() {
    local increment=$1

    case $increment in
    major)
        echo "feat!"
        ;;
    minor)
        echo "feat"
        ;;
    patch)
        echo "fix"
        ;;
    esac
}

# Generate a simple markdown changelog based on commits since the last tag.
print_changelog() {
    gitLogCommand="git log --no-merges --reverse --pretty=\"- %s → %h\""
    lastTag=$(git describe --tags --abbrev=0 2>/dev/null)
    commitRange="${lastTag}..HEAD"
    commits=$(eval "$gitLogCommand" "$commitRange")
    changelog="## Release notes 🎁\n### Changes\n${commits}\n"
    # exclude unwanted stuff
    changelog=$(echo -e "$changelog" | sed -E '/(cleanup|chore|ci):/d')
    # remove conventional commit types
    changelog=$(echo -e "$changelog" | sed -E 's/(^- )(.{0,17}!?: )/\1/')
    echo -e "$changelog"
}

print_version_table() {
    source "$REPO_BASE_DIR/properties.env"

    echo -e "\n### Versions" \
        "\n| Component | Version |" \
        "\n| --- | --- |" \
        "\n| :star2: Tailwind CSS | [$TAILWIND_CURRENT_VERSION](https://github.com/$TAILWIND_REPOSITORY/releases/tag/v$TAILWIND_CURRENT_VERSION) |" \
        "\n| :blossom: daisyUI    | [$DAISYUI_CURRENT_VERSION](https://github.com/$DAISYUI_REPOSITORY/releases/tag/v$DAISYUI_CURRENT_VERSION) |" \
        "\n"
}

print_download_list() {
    tag=$1
    printf "\n### Downloads\n%s&ensp;%s&ensp;%s&ensp;%s&ensp;%s&ensp;%s&ensp;%s\n" \
        "$(format_download_badge Linux x64 black linux "$tag")" \
        "$(format_download_badge Linux arm64 black linux "$tag")" \
        "$(format_download_badge Linux x64--musl black linux "$tag")" \
        "$(format_download_badge Linux arm64--musl black linux "$tag")" \
        "$(format_download_badge macOS x64 white apple "$tag")" \
        "$(format_download_badge macOS arm64 white apple "$tag")" \
        "$(format_download_badge Windows x64 0078D4 windows "$tag" ".exe")"
}

format_download_badge() {
    os=$1
    arhitecture=$2
    color=$3
    logo=$4
    tag=$5
    extension=$6
    printf "[![](%s)](%s)" \
        "https://img.shields.io/badge/$os-$arhitecture-$color?logo=$logo&logoColor=$color" \
        "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/$tag/tailwindcss-extra-${os,,}-$arhitecture$extension"
}

package_homebrew_bottle() {
    local version=$1
    local source_binary_path=$2
    local arch_string=$3
    local archive_name="tailwindcss-extra-${version}.${arch_string}.bottle.tar.gz"
    tmp_dir=$(mktemp -d)
    target_directory="${tmp_dir}/tailwindcss-extra/${version}/bin"

    mkdir -p "${target_directory}"
    cp "${source_binary_path}" "${target_directory}"/tailwindcss-extra
    chmod 0755 "${target_directory}"/tailwindcss-extra
    tar -czvf "${archive_name}" -C "${tmp_dir}" tailwindcss-extra

    update_homebrew_bottle_hash "${archive_name}" "${arch_string}"
}

update_homebrew_bottle_hash() {
    local archive_name=$1
    local arch_string=$2
    local formula_path="$REPO_BASE_DIR/Formula/tailwindcss-extra.rb"
    oldHash="$(sed -nE "s/.*sha256 .*[[:space:]]${arch_string}:[[:space:]]+\"([a-f0-9]+)\".*/\1/p" "$formula_path")"
    newHash="$(sha256sum "${archive_name}" | awk '{print $1}')"
    sed -i "s/${oldHash}/${newHash}/" "$formula_path"
}

update_homebrew_formula_version() {
    local newVersion=$1
    local file_path="$REPO_BASE_DIR/Formula/tailwindcss-extra.rb"
    oldVersion="$(sed -nE 's/.*version "([0-9]+\.[0-9]+\.[0-9]+)".*/\1/p' "$file_path")"
    sed -i "s/${oldVersion}/${newVersion}/g" "$file_path"
}

update_snap_version() {
    local newVersion=$1
    local file_path="$REPO_BASE_DIR/snap/snapcraft.yaml"
    sed -i -r "s/(^version: ')(.*)('$)/\1${newVersion}\3/" "$file_path"
}
