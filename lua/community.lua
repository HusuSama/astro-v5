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

  -- git
  { import = "astrocommunity.git.blame-nvim" },
  -- { import = "astrocommunity.git.git-blame-nvim" },

  -- languages
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.python-ruff" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.sql" },

  -- lsp extension
  { import = "astrocommunity.lsp.lspsaga-nvim" },
  { import = "astrocommunity.diagnostics.tiny-inline-diagnostic-nvim" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },

  -- editing support
  { import = "astrocommunity.editing-support.multicursors-nvim" },
  { import = "astrocommunity.editing-support.comment-box-nvim" },
  { import = "astrocommunity.editing-support.neogen" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.editing-support.zen-mode-nvim" },
  { import = "astrocommunity.editing-support.vim-move" },
  { import = "astrocommunity.editing-support.yanky-nvim" },
  { import = "astrocommunity.completion.avante-nvim" },
  { import = "astrocommunity.completion.blink-cmp-git" },
  { import = "astrocommunity.completion.nvim-cmp" },
  { import = "astrocommunity.completion.cmp-nvim-lua" },
  { import = "astrocommunity.completion.cmp-cmdline" },
  { import = "astrocommunity.completion.cmp-emoji" },
  { import = "astrocommunity.completion.cmp-calc" },
  { import = "astrocommunity.completion.cmp-git" },

  -- motion
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.motion.marks-nvim" },
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.motion.vim-matchup" },

  -- runner
  { import = "astrocommunity.code-runner.overseer-nvim" },

  -- others
  { import = "astrocommunity.utility.telescope-live-grep-args-nvim" },
  { import = "astrocommunity.git.diffview-nvim" },
  { import = "astrocommunity.utility.noice-nvim" },
}
