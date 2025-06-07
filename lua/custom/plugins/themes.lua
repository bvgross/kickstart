return {
  {
    'bvgross/neovim-ayu-adapted',
    name = 'ayu',
    priority = 1000,
    config = function(plugin, opts)
      require('ayu').setup {
        mirage = true,
      }
    end,
  },
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    opts = ...,
    config = function(plugin, opts)
      require('gruvbox').setup {
        contrast = 'hard',
      }
    end,
  },
  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    config = function(plugin, opts)
      require('kanagawa').setup {
        theme = 'wave',
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = 'none',
              },
            },
          },
        },
      }
    end,
  },
}
