-- IDE indent tab
vim.o.relativenumber = true
vim.o.number = true

-- Disable startup message.
vim.opt.shortmess:append({ s = true, I = true })

-- Space as <Leader>.
vim.g.mapleader = " "

-- \ as <LocalLeader>.
vim.g.maplocalleader = "\\"

-- custom filetype
vim.filetype.add({
  extension = {
    ["http"] = "http",
  },
})

vim.opt.clipboard = "unnamedplus"

vim.wo.wrap = true
vim.wo.linebreak = true
