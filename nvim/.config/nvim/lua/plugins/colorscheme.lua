return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      background = {
        light = "latte",
        dark = "macchiato",
      },
    },
  },
  -- NOTE: Enable this if can fix alacritty terminal switching system theme
  -- {
  --   "f-person/auto-dark-mode.nvim",
  --   config = {
  --     set_dark_mode = function()
  --       vim.api.nvim_set_option("background", "dark")
  --     end,
  --     set_light_mode = function()
  --       vim.api.nvim_set_option("background", "light")
  --     end,
  --   },
  -- },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
