return {
  "yetone/avante.nvim",
  opts = function(_, opts)
    opts.version = false
    return require("astrocore").extend_tbl(opts, {
      input = {
        provider = "snacks",
      },
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
      },
    })
  end,
}
