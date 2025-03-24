function is_dark_mode()
  if vim.fn.has 'mac' then
    local handle = io.popen 'defaults read -g AppleInterfaceStyle 2>/dev/null'
    local result = handle:read '*a'
    handle:close()
    return result:match 'Dark' ~= nil
  elseif vim.fn.has 'unix' == 1 then
    local handle = io.popen 'gsettings get org.gnome.desktop.interface color-scheme 2>/dev/null'
    local result = handle:read '*a'
    handle:close()
    return result:match 'dark' ~= nil
  elseif vim.fn.has 'win32' == 1 then
    local handle =
      io.popen [[powershell -command "& {Get-ItemPropertyValue -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme}"]]
    local result = handle:read '*a'
    handle:close()
    return tonumber(result) == 0 -- 0 means dark mode
  end
  return false -- Default to light mode
end

return {
  -- You can easily change to a different colorscheme.
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is.
  --
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  {
    'projekt0n/github-nvim-theme',
    name = 'github-theme',
    priority = 1000,
    config = function()
      if is_dark_mode() then
        vim.cmd.colorscheme 'github_dark_dimmed'
      else
        vim.cmd.colorscheme 'github_light'
      end
    end,
  },
  {
    'folke/tokyonight.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function() ---@diagnostic disable-next-line: missing-fields
      require('tokyonight').setup {
        styles = {
          comments = { italic = false }, -- Disable italics in comments
        },
      }

      -- vim.cmd.colorscheme 'tokyonight-storm'
    end,
  },
}
