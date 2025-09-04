vim.api.nvim_set_hl(0, "MarkdownQuote", { fg = "#FF9E3B", italic = false })

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    -- Matches any text inside double quotes (and the quotes themselves), on a single line, and handles escaped quotes.
    vim.fn.matchadd("MarkdownQuote", [[\v"[^"\\]*(\\.)*[^"]*"]])
  end,
})
