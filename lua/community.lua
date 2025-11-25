-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.motion.leap-nvim" },
  { import = "astrocommunity.motion.mini-surround" },
  { import = "astrocommunity.file-explorer.telescope-file-browser-nvim" },
  { import = "astrocommunity.search.nvim-spectre" },
  -- { import = "astrocommunity.color.huez-nvim" },
  { import = "astrocommunity.colorscheme" },
  { import = "astrocommunity.diagnostics.tiny-inline-diagnostic-nvim" },
  { import = "astrocommunity.color.transparent-nvim" },
  -- { import = "astrocommunity.game.leetcode-nvim" },
  -- { import = "astrocommunity.ai.kurama622-llm-nvim" },
  -- import/override with your plugins folder
}
