return {
  "AstroNvim/astrocore",
  opts = function(_, opts)
    local maps = opts.mappings
    maps.n["<A-l>"] = {
      function() require("astrocore.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    }
    maps.n["<A-h>"] = {
      function() require("astrocore.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    }
    maps.n["<Leader>c"] = {
      function()
        local bufs = vim.fn.getbufinfo { buflisted = true }
        require("astrocore.buffer").close(0)
        if not bufs[2] then require("snacks").dashboard() end
      end,
      desc = "Close buffer",
    }
    maps.n["<leader>bD"] = {
      function()
        require("astrocore.status").heirline.buffer_picker(function(bufnr) require("astrocore.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    }
  end,
}
