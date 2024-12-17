-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Define a table to hold your key mappings
local keymaps = {
  -- Map '\' to reveal NeoTree
  { "\\", ":Neotree toggle<CR>", desc = "NeoTree toggle" },
}

-- Function to set the keymaps
local function set_keymaps()
  for _, keymap in pairs(keymaps) do
    local keys, command, options = keymap[1], keymap[2], { desc = keymap.desc }
    vim.api.nvim_set_keymap("n", keys, command, options)
    vim.api.nvim_set_keymap(
      "n",
      "<leader>fp",
      '<cmd>lua require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })<CR>',
      { noremap = true, silent = true }
    )
  end
end

-- Call the function to set the keymaps
set_keymaps()
