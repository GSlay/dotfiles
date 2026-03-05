-- lua/plugins/conform.lua
return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        c = { "clang_format" },
        cpp = { "clang_format" },
      },
      formatters = {
        clang_format = {
          -- prepend_args để thêm args (không override toàn bộ)
          prepend_args = {
            "--style={BasedOnStyle: Google, IndentWidth: 4, ColumnLimit: 100, UseTab: Never}",
          },
          -- Hoặc nếu muốn fallback khi không có .clang-format
          -- prepend_args = { "--style=file", "--fallback-style=Google" },
        },
      },
      -- Nếu muốn format on save cho C/C++ (LazyVim mặc định có, nhưng có thể customize)
      format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
      },
    },
  },
}
