return {
  "stevearc/aerial.nvim",
  opts = function(_, opts)
    opts.close_on_select = true
    return require("astrocore").extend_tbl(opts, {
      layout = {
        max_width = { 80, 0.4 },
        min_width = 80,
      },
      disable_max_lines = 10000,
      disable_max_size = 2000000,
    })
  end,
}
