return {
  "AstroNvim/astrocore",
  opts = function(_, opts)
    local maps = opts.mappings
    maps.n["<F10>"] = { "<cmd>OverseerToggle right<cr>", desc = "Overseer Toggle" }
  end,
}
