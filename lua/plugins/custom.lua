return {
  {
    "Exafunction/codeium.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup({})
    end,
  },
  {
    "nvim-cmp",
    dependencies = {
      -- codeium
      {
        "Exafunction/codeium.nvim",
        cmd = "Codeium",
        build = ":Codeium Auth",
        opts = {},
      },
    },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      table.insert(opts.sources, 1, {
        name = "codeium",
        group_index = 1,
        priority = 100,
      })
    end,
  },
  {
    "towolf/vim-helm",
    ft = { "helm", "yaml" },
  },
  {
    "joerdav/templ.vim",
    ft = { "html", "templ" },
  },
  {
    "christoomey/vim-tmux-navigator",
    keys = {
      { "<C-h>", "<cmd>TmuxNavigateLeft<CR>",   desc = "window left" },
      { "<C-j>", "<cmd> TmuxNavigateDown<CR>",  desc = "window down" },
      { "<C-k>", "<cmd> TmuxNavigateUp<CR>",    desc = "window up" },
      { "<C-l>", "<cmd> TmuxNavigateRight<CR>", desc = "window right" },
    },
    lazy = false,
  },
}
