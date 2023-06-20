local opt = vim.opt
opt.winbar = "%{%v:lua.require'ajanbekzat.config.winbar'.get_winbar()%}"
