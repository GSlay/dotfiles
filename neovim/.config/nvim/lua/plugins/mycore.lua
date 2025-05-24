---@type LazySpec
return {
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
  {
    "LazyVim/LazyVim", -- Or whichever base plugin manages your core configuration
    config = function()
      -- Create an autocommand that triggers specifically for Python files
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "python", "rust" }, -- Apply this to files with filetype 'python'
        callback = function()
          -- Set local options for the current buffer
          vim.opt_local.tabstop = 2
          vim.opt_local.shiftwidth = 2
          vim.opt_local.softtabstop = 2
          vim.opt_local.expandtab = true -- Crucial: use spaces instead of tabs
        end,
      })
    end,
  },
}
