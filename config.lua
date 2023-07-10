-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- Enable powershell as your default shell

reload("user.options")
reload("user.plugins")
reload("user.builtin")
reload("user.lsp")
reload("user.lualine")

vim.cmd([[
		let &shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
		let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
		set shellquote= shellxquote=
  ]])

lvim.format_on_save = true
lvim.builtin.treesitter.rainbow.enable = true
lvim.colorscheme = "one_monokai"

lvim.lsp.on_attach_callback = function(client)
    ---filter passed to vim.lsp.buf.format
    ---always selects null-ls if it's available and caches the value per buffer
    ---@param client table client attached to a buffer
    ---@return boolean if client matches
    local function format_filter(client)
        local filetype = vim.bo.filetype
        local n = require "null-ls"
        local s = require "null-ls.sources"
        local method = n.methods.FORMATTING
        local available_formatters = s.get_available(filetype, method)

        if #available_formatters > 0 then
            return "null-ls"
        elseif client.supports_method "textDocument/formatting" then
            return true
        else
            return false
        end
    end

    print(format_filter(client))
end
