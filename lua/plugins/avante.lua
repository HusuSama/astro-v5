local function is_win() return vim.fn.has "win32" == 1 end

-- local function get_avante_fields()
--   if is_win() then
--     return { mode = "legacy", disable_tools = true }
--   else
--     return { mode = "agentic", disable_tools = false }
--   end
-- end

return {
  "yetone/avante.nvim",
  opts = function(_, opts)
    opts.version = false
    -- local fields_table = get_avante_fields()
    return require("astrocore").extend_tbl(opts, {
      -- windows 使用其他形式，并且不使用工具
      -- mode = fields_table.mode,
      -- provider = "deepseek",
      -- providers = {
      --   deepseek = {
      --     __inherited_from = "openai",
      --     api_key_name = "DEEPSEEK_API_KEY",
      --     endpoint = "https://api.deepseek.com",
      --     model = "deepseek-coder",
      --     -- disable_tools = fields_table.disable_tools,
      --   },
      --   deepseek_chat = {
      --     __inherited_from = "openai",
      --     api_key_name = "DEEPSEEK_API_KEY",
      --     endpoint = "https://api.deepseek.com",
      --     model = "deepseek-chat",
      --     -- disable_tools = fields_table.disable_tools,
      --   },
      --   deepseek_r1 = {
      --     __inherited_from = "openai",
      --     api_key_name = "DEEPSEEK_API_KEY",
      --     endpoint = "https://api.deepseek.com",
      --     model = "deepseek-reasoner",
      --     -- disable_tools = fields_table.disable_tools,
      --   },
      -- },
      provider = "qianwen",
      providers = {
        qianwen = {
          __inherited_from = "openai",
          api_key_name = "DASHSCOPE_API_KEY",
          endpoint = "https://dashscope.aliyuncs.com/compatible-mode/v1",
          model = "qwen3-coder-plus",
        },
      },
      windows = {
        width = 40,
        -- ask = {
        --   floating = true,
        -- },
      },
    })
  end,
}
