vim.g.user_emmet_mode = 'n'
vim.g.user_emmet_leader_key=','
vim.g.user_emmet_mode = 'inv'
vim.g.user_emmet_mode = 'a'
vim.g.user_emmet_install_global = 0
vim.cmd[[
  augroup EmmetInstallAutocmd
  autocmd!
  autocmd FileType html,css EmmetInstall
  augroup END
]]
vim.cmd[[
  augroup EmmetPHPAutocmd
  autocmd!
  autocmd FileType php EmmetInstall
  augroup END
]]
