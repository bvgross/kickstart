return {
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('bufferline').setup {
        highlights = {
          fill = {
            bg = '#1f1f28',
          },
          indicator_selected = {
            sp = '#fe8019',
          },
          buffer_selected = {
            sp = '#fe8019',
          },
        },
        options = {
          diagnostics = 'nvim_lsp',
          offsets = {
            {
              filetype = 'neo-tree',
              text = 'File Explorer',
              text_align = 'left',
              separator = true,
            },
          },
        },
      }
    end,
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local icon = level:match 'error' and ' ' or ' '
      return ' ' .. icon .. count
    end,
  },
}
