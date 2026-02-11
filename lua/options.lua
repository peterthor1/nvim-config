require "nvchad.options"

-- add yours here!

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format({ bufnr = args.buf })
  end,
})

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
