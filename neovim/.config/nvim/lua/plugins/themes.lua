return {
  {
    "AstroNvim/astroui",
    ---@type AstroUIOpts
    opts = {
      colorscheme = "kanagawa-wave",
    },
    -- init = function()
    --   local colorschemes = {
    --     "evangelion",
    --     "astromars",
    --     "tokyonight-storm",
    --     "elflord",
    --     "miasma",
    --     "dracula",
    --   }
    --   math.randomseed(os.time())
    --   local random_colorscheme = colorschemes[math.random(#colorschemes)]
    --   vim.cmd("colorscheme " .. random_colorscheme)
    -- end,
  },
  {
    "xero/miasma.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      overrides = {
        keyword = { fg = "#00ff00", bg = "#222222", undercurl = true },
        ["@boolean"] = { link = "Special" },
      },
    },
    config = function() end,
  },
  {
    "xero/evangelion.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      overrides = {
        keyword = { fg = "#00ff00", bg = "#222222", undercurl = true },
        ["@boolean"] = { link = "Special" },
      },
    },
    init = function() end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "maxmx03/dracula.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      ---@type dracula
      local dracula = require "dracula"

      dracula.setup {
        styles = {
          Type = {},
          Function = {},
          Parameter = {},
          Property = {},
          Comment = {},
          String = {},
          Keyword = {},
          Identifier = {},
          Constant = {},
        },
        transparent = false,
        on_colors = function(colors, color)
          ---@type dracula.palette
          return {
            -- override or create new colors
            mycolor = "#ffffff",
            -- mycolor = 0xffffff,
          }
        end,
        on_highlights = function(colors, color)
          ---@type dracula.highlights
          return {
            ---@type vim.api.keyset.highlight
            Normal = { fg = colors.mycolor },
          }
        end,
        plugins = {
          ["nvim-treesitter"] = true,
          ["rainbow-delimiters"] = true,
          ["nvim-lspconfig"] = true,
          ["nvim-navic"] = true,
          ["nvim-cmp"] = true,
          ["indent-blankline.nvim"] = true,
          ["neo-tree.nvim"] = true,
          ["nvim-tree.lua"] = true,
          ["which-key.nvim"] = true,
          ["dashboard-nvim"] = true,
          ["gitsigns.nvim"] = true,
          ["neogit"] = true,
          ["todo-comments.nvim"] = true,
          ["lazy.nvim"] = true,
          ["telescope.nvim"] = true,
          ["noice.nvim"] = true,
          ["hop.nvim"] = true,
          ["mini.statusline"] = true,
          ["mini.tabline"] = true,
          ["mini.starter"] = true,
          ["mini.cursorword"] = true,
          ["bufferline.nvim"] = true,
        },
      }
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    opts = function(_, opts)
      local overrides = function(colors)
        return {
          -- Markdown headers (H1–H6)
          ["@markup.heading.1.markdown"] = { fg = colors.palette.peachRed, bold = true },
          ["@markup.heading.2.markdown"] = { fg = colors.palette.springGreen, bold = true },
          ["@markup.heading.3.markdown"] = { fg = colors.palette.crystalBlue, bold = true },
          ["@markup.heading.4.markdown"] = { fg = colors.palette.peachRed },
          ["@markup.heading.5.markdown"] = { fg = colors.palette.springGreen },
          ["@markup.heading.6.markdown"] = { fg = colors.palette.crystalBlue },

          -- Bold and italic
          ["@markup.strong"] = { fg = colors.palette.carpYellow, bold = true },
          ["@markup.italic"] = { fg = colors.palette.carpYellow, italic = true },

          -- Inline code
          ["@markup.raw.markdown_inline"] = { fg = colors.palette.autumnRed, bg = colors.palette.sumiInk1 },

          -- Blockquote
          ["@markup.quote.markdown"] = { fg = colors.palette.sakuraPink, italic = true },

          -- Links
          ["@markup.link.url.markdown_inline"] = { fg = colors.palette.oniViolet, underline = true },
          ["@markup.link.label.markdown_inline"] = { fg = colors.palette.lightBlue },
        }
      end

      opts.overrides = overrides
      return opts
    end,
  },
}
