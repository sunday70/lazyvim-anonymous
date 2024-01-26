local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- 最新稳定版本
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    -- 添加 LazyVim 并导入其插件
    {
      "LazyVim/LazyVim",
      import = "lazyvim.plugins",
      opts = {
        colorscheme = "everforest",
        news = {
          lazyvim = true,
          neovim = true,
        },
      },
    },
    -- 在这里导入任何额外的模块
    { import = "lazyvim.plugins.extras.linting.eslint" },
    { import = "lazyvim.plugins.extras.formatting.prettier" },
    { import = "lazyvim.plugins.extras.lang.typescript" },
    { import = "lazyvim.plugins.extras.lang.json" },
    -- { import = "lazyvim.plugins.extras.lang.markdown" },
    { import = "lazyvim.plugins.extras.lang.rust" },
    { import = "lazyvim.plugins.extras.lang.tailwind" },
    { import = "lazyvim.plugins.extras.coding.copilot" },
    -- { import = "lazyvim.plugins.extras.dap.core" },
    -- { import = "lazyvim.plugins.extras.vscode" },
    { import = "lazyvim.plugins.extras.util.mini-hipatterns" },
    -- { import = "lazyvim.plugins.extras.test.core" },
    -- { import = "lazyvim.plugins.extras.coding.yanky" },
    -- { import = "lazyvim.plugins.extras.editor.mini-files" },
    -- { import = "lazyvim.plugins.extras.util.project" },
    { import = "plugins" },
  },
  defaults = {
    -- 默认情况下, 只有 LazyVim 插件才会延迟加载. 您的自定义插件将在启动期间加载.
    -- 如果您知道自己在做什么, 则可以将其设置为"true", 以便默认情况下延迟加载所有自定义插件.
    lazy = false,
    -- 建议暂时保留 version=false, 因为很多插件都支持版本控制,
    -- 有过时的版本, 这可能会破坏您的 Neovim 安装.
    version = false, -- 始终使用最新的 git 提交
    -- version = "*", -- 尝试安装支持 semver 的插件的最新稳定版本
  },
  dev = {
    path = "~/.ghq/github.com",
  },
  checker = { enabled = true }, -- 自动检查插件更新
  performance = {
    cache = {
      enabled = true,
      -- disable_events = {},
    },
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        "netrwPlugin",
        "rplugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
  ui = {
    custom_keys = {
      ["<localleader>d"] = function(plugin)
        dd(plugin)
      end,
    },
  },
  debug = false,
})
