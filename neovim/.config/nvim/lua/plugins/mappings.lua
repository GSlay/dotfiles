return {
  -- Mappings (astrocore)
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        i = {
          ["<C-h>"] = { "<C-w>", desc = "Delete previous word" }, -- <C-h> equal <C-BS> in WSL
          ["<C-j>"] = { "<Esc>o", desc = "Insert new line below from insert mode" }, -- <C-j> equal <C-CR> in WSL
        },
      },
    },
  },

  -- LSP mappings (astrolsp)
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      mappings = {
        n = {
          K = {
            function() vim.lsp.buf.hover() end,
            desc = "Hover symbol details",
          },
          gD = {
            function() vim.lsp.buf.declaration() end,
            desc = "Declaration of current symbol",
            cond = "textDocument/declaration",
          },
        },
      },
    },
  },
}
