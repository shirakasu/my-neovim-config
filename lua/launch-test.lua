vim.lsp.start({
    name = "lua_ls",                    -- Name for management
    cmd = { "lua-language-server" },    -- Start Language Server
    root_dir = vim.fs.dirname(vim.fs.find({ ".luarc.json" }, { upward = true })[1]), -- Search Project Root Directory
})
