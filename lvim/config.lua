-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--
--



lvim.plugins = { 
{ 'echasnovski/mini.nvim', version = false },
  {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v2.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true,
      window = {
        width = 30,
      },
      buffers = {
        follow_current_file = true,
      },
      filesystem = {
        follow_current_file = true,
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = {
            "node_modules"
          },
          never_show = {
            ".DS_Store",
            "thumbs.db"
          },
        },
      },
    })
  end
},


{
  "echasnovski/mini.map",
  branch = "stable",
  config = function()
    require('mini.map').setup()
    local map = require('mini.map')
    map.setup({
      integrations = {
        map.gen_integration.builtin_search(),
        map.gen_integration.diagnostic({
          error = 'DiagnosticFloatingError',
          warn  = 'DiagnosticFloatingWarn',
          info  = 'DiagnosticFloatingInfo',
          hint  = 'DiagnosticFloatingHint',
        }),
      },
      symbols = {
        encode = map.gen_encode_symbols.dot('4x2'),
      },
      window = {
        side = 'right',
        width = 20, -- set to 1 for a pure scrollbar :)
        winblend = 15,
        show_integration_count = false,
      },
    })
  end
},




  { "lunarvim/colorschemes" },
  { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true},
  {
    "stevearc/dressing.nvim",
    config = function()
      require("dressing").setup({
        input = { enabled = false },
      })
    end,
  },}

lvim.autocommands = {
}

lvim.colorscheme = "gruvbox"
lvim.builtin.nvimtree.active = false -- NOTE: using neo-tree

  -- X closes a buffer
  lvim.keys.normal_mode["<S-t>"] = ":NeoTreeShowToggle<CR>"

lvim.builtin.lualine.style = "default" -- or "none"
