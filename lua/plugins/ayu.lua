return {
  {
    "Shatur/neovim-ayu",
    config = function()
      require("ayu").setup {
        mirage = false, -- true = вариант "mirage"
        terminal = true,
        overrides = {},
      }
    end,
  },
}
