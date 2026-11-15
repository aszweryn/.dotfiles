vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>",
  { silent = true, noremap = true, desc = "Diagnostics (Trouble)" }
)
vim.keymap.set("n", "<leader>xw", "<cmd>Trouble diagnostics toggle<cr>",
  { silent = true, noremap = true, desc = "Workspace Diagnostics (Trouble)" }
)
vim.keymap.set("n", "<leader>xd", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
  { silent = true, noremap = true, desc = "Buffer Diagnostics (Trouble)" }
)
vim.keymap.set("n", "<leader>xl", "<cmd>Trouble loclist toggle<cr>",
  { silent = true, noremap = true, desc = "Location List (Trouble)" }
)
vim.keymap.set("n", "<leader>xq", "<cmd>Trouble qflist toggle<cr>",
  { silent = true, noremap = true, desc = "Quickfix List (Trouble)" }
)
vim.keymap.set("n", "gR", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
  { silent = true, noremap = true, desc = "LSP Definitions / references (Trouble)" }
)

-- Diagnostic signs
-- https://github.com/folke/trouble.nvim/issues/52
local signs = {
    Error = " ",        -- Bold cross (clear and bold for errors)
    Warning = " ",      -- Warning triangle (universal warning sign)
    Hint = "󰌵 ",        -- Lightbulb (indicates a suggestion or hint)
    Information = " "  -- Information circle (common info symbol)
}

vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = signs.Error,
      [vim.diagnostic.severity.WARN] = signs.Warning,
      [vim.diagnostic.severity.HINT] = signs.Hint,
      [vim.diagnostic.severity.INFO] = signs.Information,
    },
  },
})
