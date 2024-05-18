-- Plain Text editing
vim.api.nvim_create_autocmd({ "FileType"}, {
    pattern = 'mail,gitcommit,text,markdown',
    callback = function()
        vim.opt.textwidth = 72
        vim.opt.spell = true 
        vim.opt.spelllang="en_us"
        require("cmp").setup.buffer({enabled = false})
    end
})
