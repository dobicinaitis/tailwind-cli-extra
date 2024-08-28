export default {
    content: [],
    theme: {
        extend: {}
    },
    plugins: [require("daisyui")],
    daisyui: {
        themes: [
            {
                light: {
                    ...require("daisyui/src/theming/themes")["light"],
                    "base-content": "#000000"
                },
            },
        ],
    }
}

