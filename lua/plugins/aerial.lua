return {
  {
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
  },
  {
    "AstroNvim/astrocore",
    opts = function(_, opts)
      local maps = opts.mappings
      -- 使用 telescope 打开 aerial
      -- telescope 打开形式可以搜索
      maps.n["<F12>"] = {
        "<cmd>Telescope aerial<cr>",
        desc = "Find aerial",
      }
      -- 侧边栏打开 aerial
      maps.n["<C-F12>"] = { function() require("aerial").toggle() end, desc = "Symbols outline" }
    end,
  },
}
