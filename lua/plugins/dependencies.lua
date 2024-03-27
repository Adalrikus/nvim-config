return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "black",
        "debugpy",
        "mypy",
        "ruff",
        "pyright",
        "helm-ls",
        "robotframework-lsp",
        "gopls",
        "golines",
        "gofumpt",
        "goimports-reviser",
        "templ",
        "html-lsp",
        "htmx-lsp",
        "tailwindcss-language-server",
      },
    },
  },
}
