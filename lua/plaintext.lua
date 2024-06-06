-- Plain Text editing
vim.api.nvim_create_autocmd({ "FileType"}, {
    pattern = 'mail,text,markdown',
    callback = function()
        vim.opt.textwidth = 72 
        vim.opt.wrap = true
        vim.opt.linebreak = true
        vim.opt.list = false
        vim.opt.spell = true
        vim.opt.spelllang="en_us"
        require("cmp").setup.buffer({enabled = false})
    end
})

-- Git Commit editing
-- TODO: can we make this an if instead?
vim.api.nvim_create_autocmd({ "FileType"}, {
    pattern = 'gitcommit',
    callback = function()
        vim.opt.textwidth = 72
        vim.opt.spell = true 
        vim.opt.spelllang="en_us"
        require("cmp").setup.buffer({enabled = false})
    end
})
