return {
  'pmizio/typescript-tools.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  opts = {
    settings = {
      tsserver_format_options = {
        indentSize = 2,
        tabSize = 2,
        convertTabsToSpaces = true,
        semicolons = 'insert',
        insertSpaceAfterCommaDelimiter = true,
        insertSpaceBeforeAndAfterBinaryOperators = true,
        placeOpenBraceOnNewLineForFunctions = false,
        placeOpenBraceOnNewLineForControlBlocks = false,
      },
      tsserver_file_preferences = {
        quotePreference = 'single',
        importModuleSpecifierPreference = 'non-relative',
        importModuleSpecifierEnding = 'minimal',
        includePackageJsonAutoImports = 'on',
        jsxAttributeCompletionStyle = 'auto',
        allowTextChangesInNewFiles = true,
        providePrefixAndSuffixTextForRename = true,
        allowRenameOfImportPath = true,
      },
      expose_as_cpde_action = { 'all' },
      code_lens = 'all',
      jsx_close_tag = {
        enable = true,
        filetypes = { 'javascriptreact', 'typescriptreact' },
      },
    },
  },
}
