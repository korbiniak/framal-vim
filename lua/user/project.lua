local status_ok, project = pcall(require, "project_nvim")
if not status_ok then
  return
end

project.setup({
  detection_methods= { 'pattern' },
  patterns = { '.git' },
  show_hidden = false,
  silent_chdir = true,
  manual_mode = false,
  datapath = vim.fn.stdpath("data"),
})

local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

telescope.load_extension('projects')
