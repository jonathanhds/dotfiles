return {
  {
    "ledger/vim-ledger",
    ft = { "ledger", "hledger" },
    init = function()
      -- Enable hledger instead of standard ledger
      vim.g.ledger_bin = "hledger"
      -- Enable fuzzy matching for account completion
      vim.g.ledger_fuzzy_account_completion = 1
      -- Choose your date format
      vim.g.ledger_date_format = "%Y-%m-%d"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "ledger",
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      events = { "BufWritePost", "BufReadPost", "InsertLeave" },
      linters_by_ft = {
        ledger = { "hledger" },
      },
      linters = {},
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        ledger = { "trim_newlines", "trim_whitespace" },
      },
    },
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-omni" },
    opts = function(_, _)
      -- This injects the filetype logic safely into LazyVim's setup
      local cmp = require("cmp")
      cmp.setup.filetype({ "ledger", "hledger" }, {
        sources = cmp.config.sources({
          { name = "omni" },
          { name = "buffer" },
        }),
      })
    end,
  },
}
