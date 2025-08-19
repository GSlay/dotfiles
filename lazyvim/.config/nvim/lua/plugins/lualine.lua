return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        theme = "auto",
        component_separators = { left = "░", right = "░" },
        section_separators = { left = "▓▒░", right = "░▒▓" },
      },
      sections = {
        -- Add a custom function to lualine_a to show macro recording status
        lualine_a = {
          { "mode", separator = { right = "░▒▓" } },
          {
            function()
              local recording_reg = vim.fn.reg_recording()
              if recording_reg ~= "" then
                return " @" .. recording_reg
              end
              return ""
            end,
            -- Add a `color` property to make the text stand out
            color = { fg = "#ff0000", bg = "#151515", gui = "bold" },
          },
        },
        lualine_b = {
          "branch",
          {
            "diagnostics",
            sources = { "nvim_diagnostic" },
            symbols = { error = " ", warn = " ", info = " " },
            diagnostics_color = {
              error = { fg = "#151515" },
              warn = { fg = "#151515" },
              info = { fg = "#151515" },
            },
          },
        },
        lualine_x = {
          { "encoding", padding = { left = 1, right = 1 }, separator = { left = "░▒▓" } },
          { "fileformat" },
          { "filetype" },
        },
        lualine_y = { "searchcount", "progress" },
      },
    },
  },
}
