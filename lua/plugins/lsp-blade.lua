return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- This connects the Laravel Dev Tools LSP to Blade files
        laravel_ls = {}, 
      },
      setup = {
        laravel_ls = function()
          require("lspconfig").laravel_ls.setup({
            filetypes = { "html", "php", "blade" },
          })
        end,
      },
    },
  },
}
