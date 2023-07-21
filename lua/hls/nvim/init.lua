local M = {}

-- Toggle highlight search
function M.toggle()
  if vim.v.hlsearch == 1 then
    vim.cmd('nohl')
  else
    vim.api.nvim_feedkeys("*", "m", true)
  end
end

function M.setup()
  local keymapoption = {
    desc = 'hls.toggle',
    noremap = true,
    silent = true,
  }
  vim.keymap.set('n', '<C-n>', ':lua require("hls.nvim").toggle()<CR>', keymapoption)
end

return M
