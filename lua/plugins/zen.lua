return {
  "AstroNvim/astrocore",
  opts = function(_, opts)
    local maps = opts.mappings
    maps.n["<leader>ZM"] = { "<cmd>ZenMode<cr>", desc = "Zen Mode" }
  end,
}
