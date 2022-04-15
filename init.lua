-- This should be called first
require "user.plugins"

-- Specific configuration for those plugins
require "user.cmp"
require "user.lsp"
require "user.treesitter"
require "user.telescope"
require "user.impatient"
require "user.project"
require "user.neoscroll"
require "user.commentstring"
require "user.bufferline"
require "user.alpha"
require "user.session-manager"

-- Those should be called last
require "user.keymaps"
require "user.options"
require "user.config"
