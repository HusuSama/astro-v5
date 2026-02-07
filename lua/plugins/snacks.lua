local Snacks = require "snacks"
return {
  {
    "folke/snacks.nvim",
    opts = {
      ---@type snacks.indent.Config
      indent = {
        enabled = true,
        chunk = {
          enabled = true,
          char = {
            corner_top = "╭",
            corner_bottom = "╰",
            horizontal = "─",
            vertical = "│",
            arrow = ">",
          },
        },
        animate = {
          enabled = true,
        },
      },
    },
    keys = {
      -- 此处配置的 g/ 按键，在Windows的PS中并不能生效，所以提交到了 user.lua 文件中
      -- ["g/"] = { require("snacks.picker").grep, desc = "Snacks Grep" }
      ["<leader>fu"] = { function() Snacks.picker.undo() end, desc = "Snacks Undo" },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@param opts AstroLSPOpts
    opts = function(_, opts)
      if opts.mappings.n["<Leader>lR"] then
        opts.mappings.n["<Leader>lR"][1] = function()
          require("snacks.picker").lsp_references {
            auto_confirm = false,
            auto_close = true,
            layout = { preset = "telescope" },
          }
        end
      end
      if opts.mappings.n.gd then
        opts.mappings.n.gd[1] = function()
          require("snacks.picker").lsp_definitions {
            auto_confirm = true,
            auto_close = true,
            layout = { preset = "telescope" },
          }
        end
      end
      if opts.mappings.n.gI then
        opts.mappings.n.gI[1] = function()
          require("snacks.picker").lsp_implementations {
            auto_confirm = true,
            auto_close = true,
            layout = { preset = "telescope" },
          }
        end
      end
      if opts.mappings.n.gy then
        opts.mappings.n.gy[1] = function()
          require("snacks.picker").lsp_type_definitions {
            auto_confirm = true,
            auto_close = true,
            layout = { preset = "telescope" },
          }
        end
      end
      -- if opts.mappings.n["<Leader>lS"] then
      --   opts.mappings.n["<Leader>lS"][1] = function()
      --     require("snacks.picker").lsp_symbols { auto_close = true, finder = true, layout = { preset = "telescope" } }
      --   end
      -- end
      if opts.mappings.n["<Leader>lG"] then
        opts.mappings.n["<Leader>lG"][1] = function()
          require("snacks.picker").lsp_workspace_symbols { auto_close = true, layout = { preset = "telescope" } }
        end
      end
    end,
  },
}
