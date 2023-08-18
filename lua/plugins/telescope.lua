local Util = require("lazyvim.util")
local telescope = require("telescope")

return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-live-grep-args.nvim",
    config = function()
      telescope.load_extension("live_grep_args")
    end,
  },
  keys = {
    {
      "<leader>ss",
      Util.telescope("lsp_document_symbols", {
        symbols = {
          "Class",
          "Function",
          "Method",
          "Constructor",
          "Interface",
          "Module",
          "Struct",
          "Trait",
          "Field",
          "Constant",
        },
      }),
      desc = "Goto Symbol",
    },
    {
      "<leader>/",
      ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
      desc = "Grep (root dir + args)",
    },
  },
  opts = {
    pickers = {
      lsp_references = { fname_width = 75 },
    },
    defaults = {
      layout_config = {
        width = 0.9,
      },
    },
  },
}
