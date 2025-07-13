return {
  {
    "AstroNvim/astrocore",
    opts = function(_, opts)
      local maps = opts.mappings
      maps.n["<C-\\>"] = { "<cmd>ToggleTerm direction=float<cr>", desc = "Toggle terminal" }
      maps.t["<esc><esc>"] = { [[<C-\><C-n>]] }
    end,
  },
}
