return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = function(_, opts)
      return require("astrocore").extend_tbl(opts, {
        filesystem = {
          group_empty_dirs = true,
        },
        window = {
          -- useless when float
          width = 50,
          -- position = "float",
        },
        default_component_configs = {
          git_status = {
            symbols = {
              added = "",
              deleted = "",
              modified = "",
              renamed = "",
              untracked = "",
              ignored = "",
              staged = "",
              conflict = "",
            },
          },
        },
      })
    end,
  },
}
