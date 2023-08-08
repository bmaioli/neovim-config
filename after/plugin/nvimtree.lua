vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
    view = {
        width = 50,
    }
})

vim.keymap.set("n", "<leader>ft", vim.cmd.NvimTreeToggle)
