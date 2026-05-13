-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- add filetype
vim.filetype.add({
  pattern = {
    ['.*blade.php'] = 'blade'
  }
})



