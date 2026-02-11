local function set_transparent()
    local hl = vim.api.nvim_set_hl

    hl(0, "CursorLine",   { bg = "none" })
    hl(0, "CursorLineNr", { bg = "none" })
    hl(0, "LineNr",       { bg = "none" })
    hl(0, "SignColumn",   { bg = "none" })

    hl(0, "Pmenu",        { bg = "#303030" })
end

vim.api.nvim_create_autocmd("ColorScheme", {
    callback = function()
        vim.schedule(set_transparent)
    end,
})

vim.api.nvim_create_autocmd("VimEnter", {
    callback = set_transparent,
})
