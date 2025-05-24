return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      options = {
        opt = {
          wrap = true,
          tabstop = 2,
          shiftwidth = 2,
          expandtab = true,
          softtabstop = 2,
        },
      },
    },
  },
  {
    "LazyVim/LazyVim", -- Or whichever base plugin manages your core configuration
    config = function()
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "python", "rust" },
        callback = function()
          vim.opt_local.tabstop = 2
          vim.opt_local.shiftwidth = 2
          vim.opt_local.softtabstop = 2
          vim.opt_local.expandtab = true
          vim.opt_local.wrap = true
        end,
      })
    end,
  },
}
