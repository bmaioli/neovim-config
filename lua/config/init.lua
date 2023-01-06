require("config.opts")
require("config.plugins")
require("config.remaps")

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

augroup("setIndent", { clear = true })
autocmd("Filetype", {
    group = "setIndent",
    pattern = { "javascript", "typescript" },
    command = "setlocal shiftwidth=2 tabstop=2"
})
