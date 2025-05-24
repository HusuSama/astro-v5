local order = {
  lsp = 6,
  snippets = 5,
  git = 4,
  path = 3,
  buffer = 2,
  lazydev = 1,
}

return {
  "saghen/blink.cmp",
  -- enabled = false,
  dependencies = {
    "onsails/lspkind.nvim",
    "xzbdmw/colorful-menu.nvim",
  },
  opts = function(_, opts)
    opts.keymap = {
      preset = "super-tab",
    }
    opts.sources.default = { "lsp", "snippets", "git", "path", "lazydev" }
    return require("astrocore").extend_tbl(opts, {
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
