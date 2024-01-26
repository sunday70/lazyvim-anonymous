-- 在 VeryLazy 事件上自动加载键盘映射
-- 始终设置的默认键盘映射: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- 限制重复移动光标, 它可以帮助你训练自己重复移动光标的依赖性, 提高效率.
-- local discipline = require("craftzdog.discipline")
-- discipline.cowboy()

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- 移动按键映射
keymap.set("n", "t", "j")
keymap.set("n", "n", "k")
keymap.set("n", "s", "l")
keymap.set("n", "j", "t")
keymap.set("n", "k", "n")
keymap.set("n", "l", "s")
keymap.set("n", "T", "J")
keymap.set("n", "N", "K")
keymap.set("n", "S", "L")
keymap.set("n", "J", "T")
keymap.set("n", "K", "N")
keymap.set("n", "L", "S")

keymap.set("v", "t", "j")
keymap.set("v", "n", "k")
keymap.set("v", "s", "l")
keymap.set("v", "j", "t")
keymap.set("v", "k", "n")
keymap.set("v", "l", "s")
keymap.set("v", "T", "J")
keymap.set("v", "N", "K")
keymap.set("v", "S", "L")
keymap.set("v", "J", "T")
keymap.set("v", "K", "N")
keymap.set("v", "L", "S")

keymap.set("i", "<C-b>", "<Left>")
keymap.set("i", "<C-n>", "<Down>")
keymap.set("i", "<C-p>", "<Up>")
keymap.set("i", "<C-f>", "<Right>")
keymap.set("i", "<C-a>", "<Home>")
keymap.set("i", "<C-e>", "<End>")

-- 阅读源码
keymap.set("n", "<leader>tt", "<cmd> TagbarToggle <CR>")

-- 将 tab 键替换为空格
keymap.set("n", "<leader>rt", "<cmd> %ret! 2 <CR>")

-- 保存
keymap.set("n", "<C-l>", "<cmd> w <CR>")

-- 退出全部 buff
keymap.set("n", "<leader>Q", "<cmd> wqa! <CR>")

-- 窗口切换
keymap.set("n", "<C-w>t", "<C-w>j")
keymap.set("n", "<C-w>n", "<C-w>k")
keymap.set("n", "<C-w>s", "<C-w>l")
keymap.set("n", "<C-w>-", "<C-w>s")

-- 调整窗口大小
keymap.set("n", "<C-up>", "<cmd> res -5<CR>")
keymap.set("n", "<C-down>", "<cmd> res +5<CR>")
keymap.set("n", "<C-left>", "<cmd> vertical resize+5<CR>")
keymap.set("n", "<C-right>", "<cmd> vertical resize-5<CR>")

-- 禁用默认按键映射
keymap.set("i", "<C-h>", "")
keymap.set("n", "<C-s>", "")

-- 缓冲区操作 (buffers)
keymap.set("n", "ba", ":badd ")
keymap.set("n", "bc", "<cmd> bd <CR>")
keymap.set("n", "<tab>", "<cmd> bn <CR>", opts)
keymap.set("n", "<s-tab>", "<cmd> bp <CR>", opts)

-- 诊断
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

keymap.set("n", "<leader>rr", function()
  require("craftzdog.hsl").replaceHexWithHSL()
end)

keymap.set("n", "<leader>ri", function()
  require("craftzdog.lsp").toggleInlayHints()
end)
