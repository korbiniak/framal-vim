-- vim.cmd [[let $NVIM_TUI_ENABLE_TRUE_COLOR=1]]
-- vim.cmd [[let g:gruvbox_italic=1]]

vim.opt.termguicolors = true
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

vim.cmd [[autocmd BufWinLeave *.* mkview]]
vim.cmd [[autocmd BufWinLeave *.* silent loadview]]
vim.cmd [[autocmd VimEnter *.* AlphaReady]]

vim.cmd [[highlight Normal ctermbg=none]]
vim.cmd [[highlight NonText ctermbg=none]]
vim.cmd [[highlight clear SignColumn]]
