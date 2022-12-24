require("nvim-tree").setup({
  disable_netrw = true,
  hijack_netrw = true,
  open_on_setup = false,
  open_on_setup_file = false,
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
  filters = {
    dotfiles = true,
  },
  view = {
    hide_root_folder = true,
    signcolumn = "no",
    adaptive_size = true,
    preserve_window_proportions = false,
    width = "20%",
    float = {
      enable = true,
      quit_on_focus_loss = true,
    },
  },
})
