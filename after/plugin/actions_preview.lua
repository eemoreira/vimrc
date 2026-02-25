local actions_preview = require("actions-preview")
actions_preview.setup({
    diff = {
        algorithm = "patience",
        ignore_whitespace = true,
    },
    telescope = {
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        layout_config = {
            width = 0.8,
            height = 0.9,
            prompt_position = "top",
            preview_cutoff = 20,
            preview_width = function(_, _, max_lines)
                return max_lines - 15
            end,
        },
    },
})

vim.keymap.set("n", "<leader>ap", actions_preview.code_actions)
