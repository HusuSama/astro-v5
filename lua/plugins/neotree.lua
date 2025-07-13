return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = function(_, opts)
      return require("astrocore").extend_tbl(opts, {
        window = {
          -- useless when float
          -- width = 50,
          position = "float",
        },
        filesystem = {
          follow_current_file = {
            enabled = true,
          },
        },
      })
    end,
  },
  {
    "AstroNvim/astrocore",
    opts = function(_, opts)
      local maps = opts.mappings
      maps.n["<leader>e"] = { "<cmd>Neotree reveal position=float toggle<cr>", desc = "Toggle neotree" }
    end,
  },
}
