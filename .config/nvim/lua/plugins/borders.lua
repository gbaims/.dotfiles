return {
  -- Added rounded border directly to lazy.lua also, since it can't be overriden after initialization
  { "williamboman/mason.nvim", opts = { ui = { border = "rounded" } } },
  { "folke/noice.nvim", opts = { presets = { lsp_doc_border = true } } },
  { "neovim/nvim-lspconfig", opts = { diagnostics = { float = { border = "rounded" } } } },
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local window = {
        border = "rounded",
        winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,CursorLine:PmenuSel,Search:None",
      }
      opts.window = { completion = window, documentation = window }
    end,
  },
}
