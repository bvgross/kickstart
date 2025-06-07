return {
  'pmizio/typescript-tools.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  opts = {
    settings = {
      tsserver_format_options = {
        indentSize = 2,
        tabSize = 2,
        convertTabsToSpaces = true,
      },
    },
  },
}
