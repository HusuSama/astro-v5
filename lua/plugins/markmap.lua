return {
  {
    "AstroNvim/astrocore",
    opts = function(_, opts)
      local maps = opts.mappings
      maps.n["<leader>MW"] = {
        function()
          if vim.filetype.match { buf = 0 } ~= "markdown" then return end
          local current_file = vim.fn.expand "%"
          local command = "markmap -w " .. current_file
          local task = require("overseer.task").new {
            cmd = command,
            name = "MarkmapRunner",
            components = {
              { "on_complete_notify", statuses = { "success" } },
            },
          }
          task:start()
        end,
        desc = "markmap watch",
      }
    end,
  },
}
