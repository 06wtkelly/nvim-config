-- Load Plugins
require('plugins.lsp')
require('plugins.ui')
require('plugins.git')
require('plugins.completion')
require('plugins.editor')
-- require('plugins.file_nav')

-- Load Config Files
require('config.options')
require('config.keymaps')
require('config.autocmds')

-- Experimental Feature
require('vim._core.ui2').enable({})
