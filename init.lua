-- This should be called first
require "user.plugins"

-- Specific configuration for those plugins
require "user.lualine"
require "user.cmp"
require "user.lsp"
require "user.treesitter"
require "user.impatient"
require "user.project"
require "user.neoscroll"
require "user.commentstring"
require "user.bufferline"
require "user.alpha"
require "user.session-manager"
require "user.telescope"
require "user.nvimtree"

-- Those should be called last
require "user.keymaps"
require "user.options"
require "user.config"
