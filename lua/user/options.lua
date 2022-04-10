local options = {
  completeopt = { "menuone", "noselect" },
  tabstop = 4,
  shiftwidth = 2,
  scrolloff = 5,
  number = true,
  relativenumber = true, 
  wrap = false,
  cursorline = true,
  numberwidth = 4,
  undofile = true,
}


for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd [[set matchpairs+=<:>]] 
