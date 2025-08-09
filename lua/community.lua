-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },

  -- themes
  { import = "astrocommunity.colorscheme.everforest" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.onedarkpro-nvim" },

  -- debugging
  { import = "astrocommunity.debugging.nvim-dap-virtual-text" },
  { import = "astrocommunity.debugging.telescope-dap-nvim" },

  -- git
  { import = "astrocommunity.git.blame-nvim" },

  -- markdown/docs
  { import = "astrocommunity.markdown-and-latex.render-markdown-nvim" },

  -- lsp
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.python-ruff" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.sql" },
  { import = "astrocommunity.pack.full-dadbod" },
  { import = "astrocommunity.pack.thrift" },

  -- editor helper
  { import = "astrocommunity.completion.blink-cmp" },
  { import = "astrocommunity.completion.blink-cmp-git" },
  { import = "astrocommunity.completion.blink-cmp-emoji" },
  { import = "astrocommunity.diagnostics.tiny-inline-diagnostic-nvim" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.editing-support.neogen" },
  { import = "astrocommunity.editing-support.comment-box-nvim" },
  { import = "astrocommunity.editing-support.vim-move" },
  { import = "astrocommunity.comment.ts-comments-nvim" },
  { import = "astrocommunity.search.grug-far-nvim" },
  { import = "astrocommunity.programming-language-support.kulala-nvim" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.editing-support.ultimate-autopair-nvim" },
  { import = "astrocommunity.utility.lua-json5" },
  { import = "astrocommunity.completion.avante-nvim" },
  { import = "astrocommunity.editing-support.mcphub-nvim" },
  -- { import = "astrocommunity.editing-support.codecompanion-nvim" },

  -- motion
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.motion.marks-nvim" },
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.motion.vim-matchup" },

  -- runner
  { import = "astrocommunity.code-runner.overseer-nvim" },

  -- others
  { import = "astrocommunity.utility.telescope-live-grep-args-nvim" },
  { import = "astrocommunity.color.nvim-highlight-colors" },
  { import = "astrocommunity.remote-development.distant-nvim" },
  { import = "astrocommunity.git.diffview-nvim" },

  { import = "astrocommunity.utility.noice-nvim" },
}
