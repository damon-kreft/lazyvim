local Util = require("lazyvim.util")

return {
  "nvim-telescope/telescope.nvim",
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
