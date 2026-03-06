-- lua/plugins/themes.lua
return {
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

    config = function()
      -- vim.cmd.colorscheme("kanagawa-wave")
    end,
  },
  -- add dracula
  { "Mofiqul/dracula.nvim" },

  -- Configure LazyVim to load dracula
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "dracula",
    },
  },
  {
    "xero/evangelion.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      overrides = {
        ["@operator"] = { fg = "#ff79c6", bold = true },
        Operator = { fg = "#ff79c6", bold = true },
        Delimiter = { fg = "#ff79c6", bold = true },
        ["@punctuation.delimiter"] = { fg = "#f8f8f2" },  -- trắng nhạt, rõ ràng
      }
    },
    config = function(_, opts)
      require("evangelion").setup(opts)
      -- vim.cmd.colorscheme("evangelion")
    end,
  }
          }
