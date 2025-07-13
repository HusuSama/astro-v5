return {
  {
    "AstroNvim/astrocore",
    opts = function(_, opts)
      local maps = opts.mappings
      maps.n["<C-s>"] = { "<cmd>w<cr>", desc = "保存" }
      maps.n["<C-a>"] = { "ggVG", desc = "全选" }
      maps.n["x"] = { '"_x', desc = "删除单个字符不剪切" }
      maps.n["dd"] = { '"_dd', desc = "删除一行不剪切" }
      maps.n["d"] = { '"_d', desc = "删除不剪切" }
      maps.n["D"] = { '"_D', desc = "删除不剪切" }
      maps.n["X"] = { '"_X', desc = "删除不剪切" }
      maps.i["<C-h>"] = { "<Left>" }
      maps.i["<C-l>"] = { "<Right>" }
      maps.c["<C-h>"] = { "<Left>" }
      maps.c["<C-l>"] = { "<Right>" }
      maps.i["<C-v>"] = { "<C-r>+" }
      maps.c["<C-v>"] = { "<C-r>+" }
      maps.i["<C-z>"] = { "<cmd>undo<cr>" }
      maps.i["<C-s>"] = { "<cmd>w<cr>", desc = "write" }
      maps.v["<C-c>"] = { "y" }
      maps.v["d"] = { '"_d', desc = "删除而不剪切" }
    end,
  },
}
