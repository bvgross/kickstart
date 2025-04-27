-- lua/plugins/comment.lua
return {
  {
    "numToStr/Comment.nvim",
    opts = {
      mappings = {
        basic = false, -- disable gcc, gbc
        extra = false, -- disable gcO, gcA, gco
      },
    },
    config = function(_, opts)
      require("Comment").setup(opts)

      -- Custom keymaps
      vim.keymap.set("n", "<leader>/", function()
        require("Comment.api").toggle.linewise.current()
      end, { noremap = true, silent = true })

      vim.keymap.set("v", "<leader>/", function()
        local esc = vim.api.nvim_replace_termcodes("<ESC>", true, false, true)
        vim.api.nvim_feedkeys(esc, "nx", false)
        require("Comment.api").toggle.linewise(vim.fn.visualmode())
      end, { noremap = true, silent = true })
    end,
  }
}
