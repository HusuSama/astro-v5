-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

return {
  -- 对 terminal界面简化操作，ESC回到普通模式，直接可以切换窗口
  vim.api.nvim_create_autocmd({ "TermOpen" }, {
    group = vim.api.nvim_create_augroup("term_mapping", { clear = true }),
    pattern = "term://*",
    callback = function()
      local opts = { buffer = 0 }
      vim.keymap.set("t", "<C-S-q>", [[<C-\><C-n>]], opts)
      vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
    end,
  }),
}
