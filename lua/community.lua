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

  -- git
  { import = "astrocommunity.git.blame-nvim" },

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
  { import = "astrocommunity.lsp.lspsaga-nvim" },
  -- { import = "astrocommunity.lsp.garbage-day-nvim" },

  -- editor helper
  { import = "astrocommunity.completion.blink-cmp" },
  { import = "astrocommunity.completion.blink-cmp-git" },
  { import = "astrocommunity.completion.avante-nvim" },
  { import = "astrocommunity.diagnostics.tiny-inline-diagnostic-nvim" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.editing-support.neogen" },
  { import = "astrocommunity.editing-support.comment-box-nvim" },
  { import = "astrocommunity.editing-support.vim-move" },
  { import = "astrocommunity.comment.ts-comments-nvim" },
  -- { import = "astrocommunity.editing-support.ultimate-autopair-nvim" },
  { import = "astrocommunity.search.grug-far-nvim" },
  { import = "astrocommunity.programming-language-support.kulala-nvim" },
  -- { import = "astrocommunity.completion.nvim-cmp" },
  -- { import = "astrocommunity.completion.cmp-nvim-lua" },
  -- { import = "astrocommunity.completion.cmp-cmdline" },
  -- { import = "astrocommunity.completion.cmp-emoji" },
  -- { import = "astrocommunity.completion.cmp-calc" },
  -- { import = "astrocommunity.completion.cmp-git" },

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
