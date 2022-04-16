local status_ok, session_manager = pcall(require, "session_manager")
if not status_ok then
  return
end

local Path = require('plenary.path')
session_manager.setup({
  sessions_dir = Path:new(vim.fn.stdpath('data'), '.sessions'),
  autoload_mode = require("session_manager.config").AutoloadMode.Disabled,
})

vim.cmd('autocmd User SessionLoadPost lua require"nvim-tree".toggle(false, true)')
