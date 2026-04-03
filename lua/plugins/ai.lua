return {
  -- {
  --   -- community
  --   "yetone/avante.nvim",
  --   opts = function(_, opts)
  --     opts.version = false
  --     return require("astrocore").extend_tbl(opts, {
  --       input = {
  --         provider = "snacks",
  --       },
  --       provider = "qianwen",
  --       providers = {
  --         qianwen = {
  --           __inherited_from = "openai",
  --           api_key_name = "DASHSCOPE_API_KEY",
  --           endpoint = "https://dashscope.aliyuncs.com/compatible-mode/v1",
  --           model = "qwen3-coder-plus",
  --         },
  --       },
  --       windows = {
  --         width = 40,
  --       },
  --     })
  --   end,
  -- },
  {
    -- community
    "NickvanDyke/opencode.nvim",
    config = function()
      local opencode_cmd = "opencode --port"
      ---@type snacks.terminal.Opts
      local snacks_terminal_opts = {
        start_insert = true,
        win = {
          position = "right",
          enter = true,
          on_win = function(win) require("opencode.terminal").setup(win.win) end,
        },
      }
      ---@type opencode.Opts
      vim.g.opencode_opts = {
        server = {
          start = function() require("snacks.terminal").open(opencode_cmd, snacks_terminal_opts) end,
          stop = function() require("snacks.terminal").get(opencode_cmd, snacks_terminal_opts):close() end,
          toggle = function() require("snacks.terminal").toggle(opencode_cmd, snacks_terminal_opts) end,
        },
      }
    end,
  },
  {
    "coder/claudecode.nvim",
    dependencies = { "folke/snacks.nvim" },
    config = true,
    keys = {
      { "<leader>At", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude" },
      { "<leader>Af", "<cmd>ClaudeCodeFocus<cr>", desc = "Focus Claude" },
      { "<leader>Ar", "<cmd>ClaudeCode --resume<cr>", desc = "Resume Claude" },
      { "<leader>Ac", "<cmd>ClaudeCode --continue<cr>", desc = "Continue Claude" },
      { "<leader>Am", "<cmd>ClaudeCodeSelectModel<cr>", desc = "Select Claude model" },
      { "<leader>Ab", "<cmd>ClaudeCodeAdd %<cr>", desc = "Add current buffer" },
      { "<leader>A<CR>", "<cmd>ClaudeCodeAdd %<cr>", desc = "Add current buffer" },
      { "<leader>A<CR>", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send to Claude" },
      { "<leader>As", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send to Claude" },
      {
        "<leader>As",
        "<cmd>ClaudeCodeTreeAdd<cr>",
        desc = "Add file",
        ft = { "NvimTree", "neo-tree", "oil", "minifiles", "netrw" },
      },
      -- Diff management
      { "<leader>Aa", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Accept diff" },
      { "<leader>Ad", "<cmd>ClaudeCodeDiffDeny<cr>", desc = "Deny diff" },
    },
  },
}
