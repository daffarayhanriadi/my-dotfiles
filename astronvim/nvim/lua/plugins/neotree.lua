return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      source_selector = {
        winbar = false,
        statusline = false,
      },
      close_if_last_window = false,
      filesystem = {
        filtered_items = {
          visible = false,
          hide_dotfiles = false,
          hide_gitignored = true,
          never_show = {
            ".git",
          },
        },
      },
    },
  },
}
