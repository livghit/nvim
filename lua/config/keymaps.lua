-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymaps = vim.keymap
local opts = { noremap = true, silent = true }

-- BufferLineCycling
keymaps.set("n", "<tab>", ":BufferLineCycleNext<Return>", opts)
keymaps.set("n", "<s-tab>", ":BufferLineCyclePrev<Return>", opts)
-- lazyvim keymap for commenting a line
keymaps.set("n", "<leader>/", ":CommentToggle<Return>", opts)
