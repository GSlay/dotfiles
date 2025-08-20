return {
  "folke/flash.nvim",
  event = "VeryLazy", -- Load on VeryLazy event for performance
  opts = {
    search = {
      multi_window = true, -- Search across all windows
      wrap = true, -- Wrap around buffer edges
      mode = "search", -- Enable for / and ? searches
    },
    jump = {
      autojump = false, -- Require label selection
    },
  },
  keys = {
    { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash Jump" },
    { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  },
}
