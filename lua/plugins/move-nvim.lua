return {
  "kovetskiy/neovim-move",
  lazy = true,
  build = ":UpdateRemotePlugins",
  config = function()
    -- Здесь можно добавить настройки плагина, если они есть
    -- Например:
    -- vim.keymap.set('n', '<A-j>', '<cmd>MoveLine(1)<cr>')
    -- vim.keymap.set('n', '<A-k>', '<cmd>MoveLine(-1)<cr>')
    -- vim.keymap.set('v', '<A-j>', '<cmd>MoveBlock(1)<cr>')
    -- vim.keymap.set('v', '<A-k>', '<cmd>MoveBlock(-1)<cr>')
  end,
}
