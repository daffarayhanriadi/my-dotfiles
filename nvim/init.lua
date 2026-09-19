vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "autocmds"

vim.schedule(function()
  require "mappings"
end)

-- 1. Mengaktifkan sinkronisasi clipboard Neovim dengan sistem
vim.opt.clipboard = "unnamedplus"

-- 2. Mengoptimalkan penanganan wl-clipboard khusus di lingkungan WSL
if vim.fn.has("wsl") == 1 then
  vim.g.clipboard = {
    name = "wl-clipboard-wsl",
    copy = {
      ["+"] = "wl-copy --foreground --type text/plain",
      ["*"] = "wl-copy --foreground --primary --type text/plain",
    },
    paste = {
      -- Menghapus karakter \r (CRLF Windows) agar teks bersih saat masuk ke Neovim
      ["+"] = 'wl-paste --no-newline | sed -e "s/\\r$//"',
      ["*"] = 'wl-paste --no-newline --primary | sed -e "s/\\r$//"',
    },
    cache_enabled = 1,
  }
end
