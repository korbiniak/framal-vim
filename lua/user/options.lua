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
  colorcolumn = { 80 },
  encoding = "UTF-8",
  signcolumn = "yes",
  updatetime = 300,
  splitright = true,
  splitbelow = true,
  smartcase = true,
  mouse = "a",
  fileencoding = "utf-8",
}

local gopts = {
  NERDTreeDirArrowCollapsible = "",
  NERDTreeDirArrowExpandable = "",
}


for k, v in pairs(options) do
  vim.opt[k] = v
end

for k, v in pairs(gopts) do
  vim.g[k] = v
end

vim.cmd [[set matchpairs+=<:>]]
