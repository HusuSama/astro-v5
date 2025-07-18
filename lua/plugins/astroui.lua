-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  {
    "AstroNvim/astroui",
    ---@type AstroUIOpts
    opts = {
      -- change colorscheme
      -- colorscheme = "astrodark",
      -- colorscheme = "everforest",
      colorscheme = "catppuccin-frappe",
      -- colorscheme = "onedark_vivid",
      -- colorscheme = "onedark",
      -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
      highlights = {
        init = { -- this table overrides highlights in all themes
          -- Normal = { bg = "#000000" },
        },
        astrodark = { -- a table of overrides/changes when applying the astrotheme theme
          -- Normal = { bg = "#000000" },
        },
      },
      -- Icons can be configured throughout the interface
      icons = {
        -- configure the loading of the lsp in the status line
        LSPLoading1 = "⠋",
        LSPLoading2 = "⠙",
        LSPLoading3 = "⠹",
        LSPLoading4 = "⠸",
        LSPLoading5 = "⠼",
        LSPLoading6 = "⠴",
        LSPLoading7 = "⠦",
        LSPLoading8 = "⠧",
        LSPLoading9 = "⠇",
        LSPLoading10 = "⠏",
      },
    },
  },
  {
    "catppuccin/nvim",
    opts = function(_, opts)
      local colors = require("catppuccin.palettes").get_palette "frappe"
      return require("astrocore").extend_tbl(opts, {
        no_italic = true,
        styles = {
          conditional = { "bold" },
          keywords = { "bold" },
        },
        custom_highlights = {
          ["@module"] = { fg = colors.teal },
          ["@parameter"] = { fg = colors.text },
          ["@type.builtin"] = { fg = colors.yellow },
          Type = { fg = colors.yellow },
          ["@function.builtin"] = { fg = colors.peach, style = { "bold" } },
          -- ["@variable"] = { fg = "#DBEAFE" },
        },
      })
    end,
  },
  {
    "olimorris/onedarkpro.nvim",
    opts = function(_, opts)
      return require("astrocore").extend_tbl(opts, {
        styles = {
          keywords = "bold",
          conditionals = "bold",
          comments = "italic",
        },
      })
    end,
  },
}
