local status_ok, session_manager = pcall(require, "session_manager")
if not status_ok then
  return
end

local Path = require('plenary.path')
session_manager.setup({
  sessions_dir = Path:new(vim.fn.stdpath('data'), '.sessions'),
  autoload_mode = require("session_manager.config").AutoloadMode.Disabled,
  autosave_only_in_session = true,	-- I don't like that a session is created for every opened dir
})
