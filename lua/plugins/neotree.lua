return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = function(_, opts)
      return require("astrocore").extend_tbl(opts, {
        window = {
          -- useless when float
          width = 50,
          -- position = "float",
        },
        -- filesystem = {
        --   follow_current_file = {
        --     enabled = true,
        --   },
        -- },
      })
    end,
  },
}
