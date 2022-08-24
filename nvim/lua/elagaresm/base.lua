vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.hlsearch = true
vim.opt.smartindent = true
vim.opt.backup = false
vim.opt.hlsearch = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.inccommand = "split"
vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.smarttab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.wrap = false -- No Wrap lines
vim.opt.breakindent = true
vim.opt.path:append({ "**" }) -- Finding files - Search down into subfolders
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.sidescrolloff = 8
vim.opt.clipboard:append({ "unnamedplus" })
vim.opt.updatetime = 50

vim.cmd([[
set guicursor=i:block
let g:clipboard = {
      \   'name': 'win32yank',
      \   'copy': {
      \      '+': '/usr/local/bin/win32yank.exe -i --crlf',
      \      '*': '/usr/local/bin/win32yank.exe -i --crlf',
      \    },
      \   'paste': {
      \      '+': '/usr/local/bin/win32yank.exe -o --lf',
      \      '*': '/usr/local/bin/win32yank.exe -o --lf',
      \   },
      \   'cache_enabled': 0,
      \ }
]])

-- Turn off paste mode when leaving insert
-- vim.api.nvim_create_autocmd("InsertLeave", {
--  pattern = '*',
--  command = "set nopaste"
-- })

-- ignores files
-- vim.opt.wildignore:append { '*/node_modules/*' }
