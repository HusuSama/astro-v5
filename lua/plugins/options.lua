---@return table
local function keywords(...)
  local keys = vim.opt.iskeyword:get()
  for _, v in ipairs { ... } do
    table.insert(keys, v)
  end
  return keys
end

return {
  "AstroNvim/astrocore",
  opts = {
    options = {
      opt = {
        clipboard = "unnamedplus",
        linespace = 10,
        iskeyword = keywords "-",
        ignorecase = true,
      },
    },
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
  },
}
