-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'lervag/vimtex',
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = 'skim'
      vim.g.vimtex_view_skim_sync = 1
      -- vim.g.vimtex_view_skim_activate = 1
      vim.g.vimtex_view_skim_no_select = 1
      vim.g.vimtex_compiler_latexmk = {
        aux_dir = 'aux',
        out_dir = '',
        callback = 1,
        continuous = 1,
        executable = 'latexmk',
        hooks = {},
        options = {
          '-verbose',
          '-file-line-error',
          '-synctex=1',
          '-interaction=nonstopmode',
          '-shell-escape',
        },
      }
    end,
  },
  {
    'norcalli/nvim-colorizer.lua',
    event = 'VimEnter',
    opts = { '*' },
  },
  -- {
  --   'kao.nvim',
  --   dev = true,
  --   dir = '~/.config/nvim/plugin/',
  --   opts = { message = 'Hello' },
  -- },
}
