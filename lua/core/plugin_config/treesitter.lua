require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" 
  ensure_installed = { "c", "lua", "vim", "rust" },

  -- Install parsers synchornously (only applied to `ensure_installed`)
  sync_install = false,
  auto_install = true,
  highlight = {
      enable = true,
  }
}
