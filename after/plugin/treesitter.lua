local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "markdown",
    "tsx",
    "fish",
    "php",
    "json",
    "css",
    "html",
    "lua"
  },
  autotag = {
    enable = true,
  },
}
