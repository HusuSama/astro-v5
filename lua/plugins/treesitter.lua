-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
--
-- -- Customize Treesitter
--
-- ---@type LazySpec
-- return {
--   "nvim-treesitter/nvim-treesitter",
--   opts = {
--     ensure_installed = {
--       "lua",
--       "vim",
--       -- add more arguments for adding more treesitter parsers
--     },
--   },
-- }
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    local object
    object = {
      move = {
        goto_next_start = {
          ["<A-j>"] = { query = "@function.outer", desc = "Next function start" },
        },
        goto_previous_start = {
          ["<A-k>"] = { query = "@function.outer", desc = "Previous function start" },
        },
      },
    }
    return require("astrocore").extend_tbl(opts, {
      highlight = {
        enable = true,
        disable = false,
      },
      -- textobjects = object,
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<CR>",
          node_incremental = "<CR>",
          node_decremental = "<BS>",
        },
      },
    })
  end,
}
