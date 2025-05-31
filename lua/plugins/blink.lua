local order = {
  lsp = 7,
  dadbod = 6,
  path = 5,
  snippets = 4,
  git = 3,
  buffer = 2,
  lazydev = 1,
}

return {
  "saghen/blink.cmp",
  -- enabled = false,
  dependencies = {
    "onsails/lspkind.nvim",
    "xzbdmw/colorful-menu.nvim",
    "L3MON4D3/LuaSnip",
  },
  opts = function(_, opts)
    ---@type blink.cmp.KeymapConfig
    opts.keymap = {
      preset = "super-tab",
    }
    -- require("astrocore").list_insert_unique(opts.sources.default, { "dadbod" })
    opts.sources.default = { "lsp", "path", "dadbod", "snippets", "lazydev" }
    return require("astrocore").extend_tbl(opts, {
      sources = {
        per_filetype = { sql = { "dadbod" } },
        providers = {
          dadbod = { module = "vim_dadbod_completion.blink" },
        },
      },
      ---@type blink.cmp.CompletionConfig
      ---@diagnostic disable:missing-fields
      completion = {
        list = {
          selection = { preselect = true, auto_insert = false },
        },
        menu = {
          draw = {
            components = {
              kind_icon = {
                text = function(ctx)
                  return require("lspkind").symbolic(ctx.kind, {
                    mode = "symbol",
                  })
                end,
              },
              label = {
                text = function(ctx) return require("colorful-menu").blink_components_text(ctx) end,
                highlight = function(ctx) return require("colorful-menu").blink_components_highlight(ctx) end,
              },
            },
            columns = {
              {
                "kind_icon",
              },
              {
                "label",
                -- "label_description",
                "kind",
                gap = 5,
              },
            },
          },
        },
      },
      ---@type blink.cmp.SnippetsConfig
      snippets = {
        -- preset = "luasnip",
        active = function(filter)
          local snippet = require "luasnip"
          local blink = require "blink.cmp"
          if snippet.in_snippet() and not blink.is_visible() then
            return true
          else
            if not snippet.in_snippet() and vim.fn.mode() == "n" then snippet.unlink_current() end
            return false
          end
        end,
      },
      cmdline = {
        enabled = true,
        completion = {
          menu = {
            auto_show = function(ctx) return vim.fn.getcmdtype() == ":" end,
          },
        },
        keymap = {
          preset = "inherit",
        },
      },
      fuzzy = {
        sorts = {
          function(a, b)
            local a_order_id = order[a.source_id]
            local b_order_id = order[b.source_id]
            if a_order_id ~= b_order_id then return a_order_id > b_order_id end
          end,
          "score",
          "sort_text",
        },
      },
      -- signature = { enabled = true },
    })
  end,
}
