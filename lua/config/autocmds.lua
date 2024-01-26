-- 离开 insert 模式时关闭粘贴模式
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})

-- 禁用指定文件格式的隐藏
-- LazyVim 中默认隐藏级别为 3
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json", "jsonc", "markdown" },
  callback = function()
    vim.opt.conceallevel = 0
  end,
})
