return {
  -- NOTE: LSP Config override
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- require "configs.lspconfig"
      require "nvchad.configs.lspconfig"
      require "configs.lspconfig" -- load our web dev servers
    end,
  },

  -- NOTE: Enhanced Syntax Highlighting (Treesitter)
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "html",
        "css",
        "javascript",
        "typescript",
        "jsx",
        "tsx",
        "json",
        "yaml",
        "graphql",
        "markdown",
        "vim",
        "lua",
        "vimdoc",
        "python",
        "java",
        "go",
        "cpp",
        "c",
        "rust",
      },
      highlight = {
        enable = true, -- Memastikan syntax highlighting Treesitter juga aktif
      },
    },
  },

  -- NOTE: Auto-formatting on Save (conform.nvim)
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- NOTE: Auto-close & Auto-rename HTML/JSX tags
  {
    "windwp/nvim-ts-autotag",
    ft = { "html", "javascript", "typescript", "javascriptreact", "typescriptreact" },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  -- NOTE: Git signs in the gutter (Crucial for tracking backend/frontend changes)
  {
    "lewis6991/gitsigns.nvim",
    event = "User FilePost",
    opts = function()
      return require "nvchad.configs.gitsigns"
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- NOTE: WakaTime
  {
    "wakatime/vim-wakatime",
    lazy = false,
  },

  {
    "fiqryq/wakastat.nvim",
    event = "VeryLazy",
    -- cmd = { "WakastatRefresh", "WakastatStatus" },
    config = function()
      require "configs.wakastat"
    end,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
    enabled = false,
  },

  {
    "IogaMaster/neocord",
    event = "VeryLazy",
    config = function()
      require "configs.discord"
    end,
  },

  {
    "nvchad/minty",
    lazy = true,
    config = function()
      require "configs.minty"
    end,
  },

  {
    "nvchad/showkeys",
    cmd = "ShowkeysToggle",
    opts = { position = "top-center" },
  },

  {
    "nvzone/typr",
    dependencies = "nvzone/volt",
    opts = {},
    cmd = { "Typr", "TyprStats" },
  },

  {
    "shellRaining/hlchunk.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "configs.chunk"
    end,
  },

  { "nvzone/volt", lazy = true },
  { "nvzone/menu", lazy = true },

  {
    "nvzone/timerly",
    dependencies = "nvzone/volt",
    cmd = "TimerlyToggle",
    opts = {}, -- optional
  },

  {
    "nvzone/floaterm",
    dependencies = "nvzone/volt",
    opts = {},
    cmd = "FloatermToggle",
  },

  { "Civitasv/cmake-tools.nvim", opts = {} },

  {
    "slowy07/mywpm.nvim",
    dependencies = "nvzone/volt",
    event = "VeryLazy",
    config = function()
      require "configs.mywpm"
    end,
  },

  -- Sedang Error (Admin-nya kena WrongSuspend)
  -- {
  --   "gisketch/triforce.nvim",
  --   dependencies = {
  --     "nvzone/volt",
  --   },
  --   config = function()
  --     require "configs.triforce"
  --   end,
  -- },

  -- todo nvim
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    config = function()
      require "configs.todo"
    end,
  },

  -- trouble nvim
  {
    "folke/trouble.nvim",
    opts = {},
    lazy = false,
    cmd = "Trouble",
  },

  -- A hackable markdown, Typst, latex, html(inline) & Asciidoc previewer for Neovim
  {
    "OXY2DEV/markview.nvim",
    lazy = false,
  },

  {
    "richwomanbtc/overleaf.nvim",
    lazy = false,
    config = function()
      require("overleaf").setup {
        cookie = "s%3A752DdyZE89sWKTeSg267rCa6kX9pPoxE.pIYlmst60FSjHwqCVNnRo7qxpFlTmnD3jFU6dgBLYh8",
      }
    end,
    build = "cd node && npm install",
  },
}
