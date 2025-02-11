-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
vim.filetype.add({
  extension = {
    tfvars = "terraform",
  },
})

vim.opt.relativenumber = false
vim.diagnostic.config({ virtual_text = false })
