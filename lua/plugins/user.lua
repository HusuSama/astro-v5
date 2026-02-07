-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- You can also add or configure plugins by creating files in this `plugins/` folder
-- PLEASE REMOVE THE EXAMPLES YOU HAVE NO INTEREST IN BEFORE ENABLING THIS FILE
-- Here are some examples:

---@return table
local function keywords(...)
  local keys = vim.opt.iskeyword:get()
  for _, v in ipairs { ... } do
    table.insert(keys, v)
  end
  return keys
end

---@type LazySpec
return {
  -- customize dashboard options
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          -- header = table.concat({
          --   " █████  ███████ ████████ ██████   ██████ ",
          --   "██   ██ ██         ██    ██   ██ ██    ██",
          --   "███████ ███████    ██    ██████  ██    ██",
          --   "██   ██      ██    ██    ██   ██ ██    ██",
          --   "██   ██ ███████    ██    ██   ██  ██████ ",
          --   "",
          --   "███    ██ ██    ██ ██ ███    ███",
          --   "████   ██ ██    ██ ██ ████  ████",
          --   "██ ██  ██ ██    ██ ██ ██ ████ ██",
          --   "██  ██ ██  ██  ██  ██ ██  ██  ██",
          --   "██   ████   ████   ██ ██      ██",
          -- }, "\n"),
          header = table.concat({
            " ,--.-,,-,--,   _,.---._       _,.---._      ,-,--.               ",
            "/==/  /|=|  | ,-.' , -  `.   ,-.' , -  `.  ,-.'-  _\\ .--.-. .-.-. ",
            "|==|_ ||=|, |/==/_,  ,  - \\ /==/_,  ,  - \\/==/_ ,_.'/.==/ -|/=/  | ",
            "|==| ,|/=| _|==|   .=.     |==|   .=.     \\==\\  \\   |==| ,||=| -| ",
            "|==|- `-' _ |==|_ : ;=:  - |==|_ : ;=:  - |\\==\\ -\\  |==|- | =/  | ",
            "|==|  _     |==| , '='     |==| , '='     |_\\==\\ ,\\ |==|,  \\/ - | ",
            "|==|   .-. ,\\\\==\\ -    ,_ / \\==\\ -    ,_ //==/\\/ _ ||==|-   ,   / ",
            "/==/, //=/  | '.='. -   .'   '.='. -   .' \\==\\ - , //==/ , _  .'  ",
            "`--`-' `-`--`   `--`--''       `--`--''    `--`---' `--`..---'    ",
          }, "\n"),
        },
      },
    },
  },

  -- 一些基础配置
  {
    "AstroNvim/astrocore",
    opts = {
      options = {
        opt = {
          clipboard = "unnamedplus",
          linespace = 2,
          iskeyword = keywords "-",
          ignorecase = true,
        },
      },
      features = {
        large_buf = { size = 1024 * 256, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
        highlighturl = true, -- highlight URLs at start
        notifications = true, -- enable notifications at start
        signature_help = false,
      },
    },
  },

  -- 编辑快捷键相关配置
  {
    "AstroNvim/astrocore",
    opts = function(_, opts)
      local maps = opts.mappings
      -- 普通模式按键
      maps.n["<C-s>"] = { "<cmd>w<cr>", desc = "保存" }
      maps.n["<C-a>"] = { "ggVG", desc = "全选" }
      maps.n["x"] = { '"_x', desc = "删除单个字符不剪切" }
      maps.n["dd"] = { '"_dd', desc = "删除一行不剪切" }
      maps.n["d"] = { '"_d', desc = "删除不剪切" }
      maps.n["D"] = { '"_D', desc = "删除不剪切" }
      maps.n["X"] = { '"_X', desc = "删除不剪切" }
      maps.n["g/"] = { require("snacks.picker").grep, desc = "Snacks Grep" }
      -- 编辑模式按键
      maps.i["<C-h>"] = { "<Left>" }
      maps.i["<C-l>"] = { "<Right>" }
      maps.i["<C-z>"] = { "<cmd>undo<cr>" }
      maps.i["<C-s>"] = { "<cmd>w<cr>", desc = "write" }
      maps.i["<C-v>"] = { "<C-r>+" }
      -- 选择模式Visual模式按键
      maps.c["<C-h>"] = { "<Left>" }
      maps.c["<C-l>"] = { "<Right>" }
      maps.c["<C-v>"] = { "<C-r>+" }
      maps.v["<C-c>"] = { "y" }
      maps.v["d"] = { '"_d', desc = "删除而不剪切" }
    end,
  },

  -- buffer 配置
  {
    "AstroNvim/astrocore",
    opts = function(_, opts)
      local maps = opts.mappings
      maps.n["<A-l>"] = {
        function() require("astrocore.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
        desc = "Next buffer",
      }
      maps.n["<A-h>"] = {
        function() require("astrocore.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
        desc = "Previous buffer",
      }
      maps.n["<Leader>c"] = {
        function()
          local bufs = vim.fn.getbufinfo { buflisted = true }
          require("astrocore.buffer").close(0)
          if not bufs[2] then require("snacks").dashboard() end
        end,
        desc = "Close buffer",
      }
      maps.n["<leader>bD"] = {
        function()
          require("astrocore.status").heirline.buffer_picker(
            function(bufnr) require("astrocore.buffer").close(bufnr) end
          )
        end,
        desc = "Pick to close",
      }
    end,
  },
}
