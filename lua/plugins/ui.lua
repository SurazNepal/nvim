return {
  {
    "folke/snacks.nvim",
    opts = function(_, opts)
      opts.explorer = opts.explorer or {}

      -- 1. FIX POSITION: Keep it on the right
      opts.explorer.win = {
        explorer = {
          position = "right",
          width = 30,
        },
      }

      -- 2. THE FIX: Keep Snacks as the provider but stop the "Auto-Open"
      -- We keep this true so netrw doesn't show up...
      opts.explorer.replace_netrw = true 
      
      -- ...But we disable the 'auto_open' if it's being triggered by an Extra
      -- Most auto-opening in Snacks is caused by opening a directory. 
      -- If you want to open 'nvim .' and NOT see an explorer, use this:
      opts.explorer.enabled = true
    end,
  },
}
