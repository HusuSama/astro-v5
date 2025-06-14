return {
  "yetone/avante.nvim",
  opts = function(_, opts)
    return require("astrocore").extend_tbl(opts, {
      -- windows 使用其他形式，并且不使用工具
      mode = "legacy",
      provider = "deepseek",
      providers = {
        deepseek = {
          __inherited_from = "openai",
          api_key_name = "DEEPSEEK_API_KEY",
          endpoint = "https://api.deepseek.com",
          model = "deepseek-coder",
          disable_tools = true,
        },
      },
    })
  end,
}
