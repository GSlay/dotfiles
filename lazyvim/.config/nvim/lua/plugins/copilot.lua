return {
  {
    "github/copilot.vim",
    config = function()
      -- Tắt mapping mặc định của Tab để tránh xung đột với nvim-cmp
      vim.g.copilot_no_tab_map = true
      -- Thiết lập Ctrl + L ( <C-l> ) để accept ghost text
      vim.keymap.set('i', '<CR>', 'copilot#Accept("\\<CR>")', {
        expr = true,
        replace_keycodes = false
      })
    end,
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "main",
    dependencies = {
      { "github/copilot.vim" },
      { "nvim-lua/plenary.nvim" },
    },
    -- Khai báo opts như bình thường
    opts = {
      debug = false,
      window = {
        layout = 'float',
        relative = 'cursor',
        width = 0.8,
        height = 0.4,
      },
      -- Các thiết lập mặc định khác có thể thêm ở đây
    },
    keys = {
      { "<leader>cc", ":CopilotChat ", desc = "CopilotChat - Prompt" },
      { "<leader>ce", ":CopilotChatExplain<cr>", desc = "CopilotChat - Explain code" },
    },
    config = function(_, opts)
      -- Fix cho Windows & Winget curl
      if vim.fn.has("win32") == 1 then
        local winget_curl = vim.fn.expand("$LOCALAPPDATA") .. "\\Microsoft\\WinGet\\Links\\curl.exe"
        
        if vim.fn.executable(winget_curl) == 1 then
          opts.curl_command = winget_curl
        end

        -- Quan trọng: Giữ lại các tham số curl cũ và thêm -g
        opts.curl_parameters = { "-g", "--silent", "--no-buffer" }
      end

      require("CopilotChat").setup(opts)
    end,
  }
}
