return {
  {
    "folke/snacks.nvim",
    opts = {
      ---@type snacks.indent.Config
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
}
