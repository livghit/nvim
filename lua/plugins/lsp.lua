local servers = {
  "html-lsp",
  "css-lsp",
  "intelephense",
  "typescript-language-server",
  "tailwindcss-language-server",
  "csharp-language-server",
  "csharpier",
  "luacheck",
  "gopls",
  "pyright",
  "lua-language-server",
  "sqlls",
  "arduino-language-server",
}

return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, servers)
    end,
  },
}
