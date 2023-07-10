local filetypes = {
    "css",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "scss",
    "typescript",
    "typescriptreact",
}

require("lvim.lsp.manager").setup("emmet_ls", {
    filetypes = filetypes,
})


local formatter = require("lvim.lsp.null-ls.formatters")
formatter.setup({
    {
        command = "stylua",
    },
    {
        command = "[[.\node_modules\.bin\prettier]]",
        filetypes = filetypes
    },
})


vim.diagnostic.config({
    update_in_insert = true,
    signs = {
        values = {
            { name = "DiagnosticSignError", text = "" },
            { name = "DiagnosticSignWarn",  text = "" },
            { name = "DiagnosticSignHint",  text = "" },
            { name = "DiagnosticSignInfo",  text = "" },
        },
    },
})
