return {
  "AstroNvim/astrocore",
  opts = function(_, opts)
    local maps = opts.mappings
    maps.n["<leader>fG"] = {
      function() require("telescope").extensions.live_grep_args.live_grep_args() end,
      desc = "telescope live grep args",
    }
  end,
}
