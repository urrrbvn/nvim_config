return {
  -- first key is the mode
  n = {
    ["<space>fs"] = { ":Telescope file_browser" },
  },
  c = {
    -- basic cursor movement in insert mode
    ["<C-j>"] = { "<Down>" },
    ["<C-k>"] = { "<Up>" },
    ["<C-l>"] = { "<Right>" },
    ["<C-h>"] = { "<Left>" },
  },
  i = {
    -- basic cursor movement in insert mode
    ["<C-j>"] = { "<Down>" },
    ["<C-k>"] = { "<Up>" },
    ["<C-l>"] = { "<Right>" },
    ["<C-h>"] = { "<Left>" },
    -- ["<C-Right>"] = { "<esc>lwi" },
    -- ["<C-Left>"] = { "<esc>gea" },
    -- ctrl arrow jump to word boundaries
    ["<C-Right>"] = { function() vim.fn.search [[\<\|\>]] end },
    ["<C-Left>"] = { function() vim.fn.search([[\<\|\>]], "b") end },
  },
}
