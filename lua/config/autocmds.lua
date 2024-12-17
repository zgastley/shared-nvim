-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here.

-- Function to trim trailing whitespace
local function precise_trim_whitespace()
  -- Save the current view (cursor position, scroll, etc.)
  local saved_view = vim.fn.winsaveview()

  -- Trim trailing whitespace in the entire buffer
  pcall(function()
    vim.cmd([[silent keepjumps %s/\s\+$//e]])
  end)

  -- Restore the saved view to avoid disrupting the user
  vim.fn.winrestview(saved_view)
end

-- Create an autocommand group
local trim_group = vim.api.nvim_create_augroup("PreciseTrimWhiteSpace", { clear = true })

-- Add an autocommand to trim whitespace on InsertLeave
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  callback = function()
    precise_trim_whitespace()
  end,
  group = trim_group,
})

-- Command to reveal the current file in Finder
vim.api.nvim_create_user_command("Rfinder", function()
  local path = vim.fn.expand("%:p") -- Get the full path of the current file
  os.execute("open -R " .. vim.fn.shellescape(path)) -- Escape the path for safety
end, {})
