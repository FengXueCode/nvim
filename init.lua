require("lazynvim-init") -- 初始化lazyvim
require("configs.basic") -- 基础设置
require("configs.keymaps") -- 键盘映射
require("configs.colorscheme") -- 主题设置
-- 插件配置
require("configs.plugin-configs.nvim-treesitter")
require("configs.plugin-configs.nvim-tree")
require("configs.plugin-configs.formatter")
require("configs.lsp.setup")
require("configs.lsp.nvim-cmp")
