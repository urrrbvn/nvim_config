-- This file simply bootstraps the installation of Lazy.nvim and then calls other files for execution
-- This file doesn't necessarily need to be touched, BE CAUTIOUS editing this file and proceed at your own risk.
local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- validate that lazy is available
if not pcall(require, "lazy") then
  -- stylua: ignore
  vim.api.nvim_echo({ { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } }, true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args) vim.lsp.buf.format { async = false } end,
})

vim.keymap.set("n", "<space>fs", ":Telescope file_browser<CR>")
vim.keymap.set("n", "cr", function() vim.lsp.buf.rename() end, {
  desc = "Переименовать переменную/функцию",
  noremap = true, -- не использовать рекурсивные маппинги
  silent = true, -- не выводить сообщения в командную строку
})

require "lazy_setup"
require "polish"
require "mappings"
