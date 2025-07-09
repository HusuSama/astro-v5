return {
  "folke/snacks.nvim",
  opts = function(_, opts)
    require("astrocore").extend_tbl(opts, {
      animate = {
        enabled = true,
        style = "out",
        easing = "linear",
        duration = {
          step = 20, -- ms per step
          total = 500, -- maximum duration
        },
      },
    })
  end,
}
