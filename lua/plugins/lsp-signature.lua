return {
  "ray-x/lsp_signature.nvim",
  opts = function(_, opts)
    return require("astrocore").extend_tbl(opts, {
      floating_window = false,
    })
  end,
}
