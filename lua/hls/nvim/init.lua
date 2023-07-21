local M = {}

function M.toggle()
  if vim.v.hlsearch == 1 then
    vim.cmd('nohl')
  else
    vim.api.nvim_feedkeys("*", "m", true)
  end
end

return M
