vim.api.nvim_set_hl(0, "MarkdownQuote", { fg = "#FF9E3B", italic = false })

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    -- Match anything inside double quotes, but not multiline
    vim.fn.matchadd("MarkdownQuote", [["\zs[^"]\{-}\ze"]])
  end,
})
