local C = require "colors.base_color"

--- 自定义blink-cmp补全高亮显示
local function apply_blinkcmp_highlight()
  vim.api.nvim_set_hl(0, "PmenuSel", { bg = C.Lavender, fg = C.Surface0, bold = true })
  vim.api.nvim_set_hl(0, "FloatBorder", { fg = C.Mantle, bg = "NONE" })
end

--- 获取指定的高亮组数据
---@param name string
---@return vim.api.keyset.highlight
local function get_hl(name)
  local ok, hl = pcall(vim.api.nvim_get_hl, 0, { name = name, create = false })
  if not ok or vim.tbl_isempty(hl) then return { bg = "NONE", fg = "NONE" } end
  ---@type vim.api.keyset.highlight
  return hl
end

local function update_neotree_highlight(focused)
  if focused then
    vim.api.nvim_set_hl(0, "NeotreeCursorLine", { bg = C.Lavender, fg = C.Surface0, bold = true })
  else
    vim.api.nvim_set_hl(0, "NeotreeCursorLine", get_hl "CursorLine")
  end
end

return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    autocmds = {
      custom_highlights = {
        {
          event = "ColorScheme",
          callback = apply_blinkcmp_highlight,
        },
        {
          event = { "BufEnter", "WinEnter" },
          callback = function()
            local filetype = vim.bo.filetype
            if filetype == "neo-tree" then update_neotree_highlight(true) end
          end,
        },
        {
          event = { "BufLeave", "WinLeave" },
          callback = function()
            local filetype = vim.bo.filetype
            if filetype == "neo-tree" then update_neotree_highlight(false) end
          end,
        },
      },
    },
  },
}
