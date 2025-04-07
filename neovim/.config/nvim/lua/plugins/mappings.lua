return {
  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        i = {
          ["<C-BS>"] = { "<C-w>", desc = "Delete previous word" },
        },
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    opts = function(_, opts) -- Ensure we merge options correctly
      opts.mappings = opts.mappings or {}
      opts.mappings.n = vim.tbl_extend("force", opts.mappings.n or {}, {
        K = { function() vim.lsp.buf.hover() end, desc = "Hover symbol details" },
        gD = {
          function() vim.lsp.buf.declaration() end,
          desc = "Declaration of current symbol",
          cond = "textDocument/declaration",
        },
      })
    end,
  },
}
