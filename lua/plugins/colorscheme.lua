return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "mocha",
      color_overrides = {
        mocha = {
          base = "#23232e",
          mantle = "#25252e",
          crust = "#25252e",
        },
      },
      highlight_overrides = {
        mocha = function(mocha)
          return {
            LineNr = { fg = mocha.overlay1 },
          }
        end,
      },
    },
  },
  {
    "sainnhe/gruvbox-material",
  },
  {
    "sainnhe/edge",
  },
  {
    "navarasu/onedark.nvim",
    name = "onedark",
    opts = {
      style = "warmer",
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
