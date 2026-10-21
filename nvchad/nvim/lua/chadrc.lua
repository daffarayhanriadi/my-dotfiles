-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

vim.diagnostic.config {
  virtual_text = false,
}

M.base46 = {
  theme = "everblush",
  transparency = true,
  hl_override = {
    Comment = { fg = "#747474", italic = true }, -- Vim Comment
    ["@comment"] = { fg = "#9da5b4", italic = true }, -- Programming Comment
    LspInlayHint = { fg = "#747474", italic = true }, -- Inlay Hint Comment
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
    style = "borderless",
  },
  tabufline = {
    enabled = false,
  },
  statusline = {
    theme = "minimal", -- Options: default, minimal, vscode, vscode_colored
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "round",

    -- Define the ordering of components. Notice "wakastat" is added at the end. (wakastat)
    order = { "mode", "file", "git", "%=", "wakastat", "%=", "diagnostics", "lsp_msg", "lsp", "cursor", "cwd" },

    -- Define the actual code string that NvChad uses for your component (wakastat)
    modules = {
      wakastat = function()
        -- Safely check if the plugin is loaded before calling its API
        local ok, wakastat = pcall(require, "wakastat")
        if not ok then
          return ""
        end

        -- Get the raw text string from the plugin
        local status = wakastat.status()
        if status == "" then
          return ""
        end

        -- Wrap it in NvChad's statusline highlight group styling
        -- (Uses default secondary accent blocks)
        return " %#StText#" .. status .. " "
      end,
    },
  },
  cmp = {
    style = "atom_colored",
  },
}

return M
