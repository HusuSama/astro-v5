---@return string | nil
local function get_git_root()
  local handler = io.popen "git rev-parse --show-toplevel"
  if handler == nil then return nil end
  local output = handler:read "*a"
  local git_root = output:gsub("[\n\r]", "")
  handler:close()
  return git_root
end

return {
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    ---@diagnostic disable:missing-fields
    opts = {
      config = {
        vtsls = {
          root_dir = function()
            local root_path = get_git_root()
            if root_path ~= nil then return root_path end
          end,
          settings = {
            vtsls = {
              autoUseWorkspaceTsdk = true,
            },
          },
        },
        emmet_ls = { filetypes = "html" },
        prettierd = { filetypes = "html" },
      },
    },
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = function(_, opts)
      opts.ensure_installed = vim.tbl_filter(function(s) return s ~= "prettierd" end, opts.ensure_installed)
    end,
  },
  {
    "AstroNvim/astrocore",
    opts = function(_, opts)
      local maps = opts.mappings
      maps.n["<Leader>Rl"] = { "<cmd>LspRestart<cr>", desc = "重启LSP服务" }
    end,
  },
}
