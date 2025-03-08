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
