-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

vim.diagnostic.config( {
  virtual_text = true,
})

M.base46 = {
  theme = "everblush",
  hl_override = {
    Comment = { fg = "#747474", italic = true }, -- Vim Comment
    ["@comment"] = { fg = "#747474", italic = true }, -- Programming Comment
    LspInlayHint = {fg = "#747474", italic = true }, -- Inlay Hint Comment
  },
}

M.nvdash = {
  load_on_startup = true,
  header = {
    -- "",
    -- "vscode killers, and jetbrains slayer",
    -- "",
     -- "           ▄ ▄                   ",
     -- "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
     -- "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
     -- "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
     -- "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
     -- "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
     -- "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
     -- "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
     -- "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
     -- "                                 ",
     "                      ",
     "  ▄▄         ▄ ▄▄▄▄▄▄▄",
     "▄▀███▄     ▄██ █████▀ ",
     "██▄▀███▄   ███        ",
     "███  ▀███▄ ███        ",
     "███    ▀██ ███        ",
     "███      ▀ ███        ",
     "▀██ █████▄▀█▀▄██████▄ ",
     "  ▀ ▀▀▀▀▀▀▀ ▀▀▀▀▀▀▀▀▀▀",
     "                      ",
     "  Powered By  eovim ",
     "                      ",
  },
}

M.ui = {
  telescope = {
    style = "borderless"
  },
  tabufline = {
    enabled = false,
  },
  statusline = {
    theme = "vscode_colored",
    separator_style = "default",
  },
  cmp = {
    style = "atom_colored"
  },
}

return M
