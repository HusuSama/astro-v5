return {
  {
    "folke/snacks.nvim",
    opts = {
      indent = {
        enabled = true,
        chunk = {
          enabled = true,
          char = {
            corner_top = "╭",
            corner_bottom = "╰",
            horizontal = "─",
            vertical = "│",
            arrow = ">",
          },
        },
        animate = {
          enabled = true,
        },
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@param opts AstroLSPOpts
    opts = function(_, opts)
      if opts.mappings.n["<Leader>lR"] then
        opts.mappings.n["<Leader>lR"][1] = function()
          require("snacks.picker").lsp_references {
            auto_confirm = false,
            auto_close = true,
            layout = { preset = "telescope" },
          }
        end
      end
    end,
  },
}
