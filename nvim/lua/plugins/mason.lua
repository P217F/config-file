return {
    "mason-org/mason.nvim",
    lazy = false,
    priority = 1000,
    build = ":MasonUpdate",
    config = function()
        require("mason").setup({
            log_level = vim.log.levels.WARN,
            ui = {
                border = "none",
                check_outdated_packages_on_open = false,
            },
            max_concurrent_installers = 1,
        })
    end,
}
