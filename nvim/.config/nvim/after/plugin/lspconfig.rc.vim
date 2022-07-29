if !exists("g:lspconfig")
    finish
endif

lua << EOF
    local nvim_lsp_installer = require('nvim-lsp-installer')
    local nvim_lsp = require('lspconfig')
    local protocol = require('vim.lsp.protocol')

    local on_attach = function(client, bufnr) 
        local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
        local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

        -- Mappings.
        local opts = { noremap = true, silent = true }

        buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)

        --if client.resolved_capabilities.document_formatting then
        --    vim.api.nvim_command [[augroup Format]]
        --    vim.api.nvim_command [[autocmd! * <buffer>]]
        --    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
        --    vim.api.nvim_command [[augroup END]]
        --end

        --protocol.SymbolKind = { }
        protocol.CompletionItemKind = {
            '', -- Text
            '', -- Method
            '', -- Function
            '', -- Constructor
            '', -- Field
            '', -- Variable
            '', -- Class
            'ﰮ', -- Interface
            '', -- Module
            '', -- Property
            '', -- Unit
            '', -- Value
            '', -- Enum
            '', -- Keyword
            '﬌', -- Snippet
            '', -- Color
            '', -- File
            '', -- Reference
            '', -- Folder
            '', -- EnumMember
            '', -- Constant
            '', -- Struct
            '', -- Event
            'ﬦ', -- Operator
            '', -- TypeParameter
        }
    end

    local function format_diagnostics(params, client_id, client_name, filter_out)
        for i, diagnostic in ipairs(params.diagnostics) do
            if filter_out ~= nil and filter_out(diagnostic) then
                params.diagnostics[i] = nil
            else
                diagnostic.message = '['.. client_name ..'] '..diagnostic.message..' ['..(diagnostic.code or '')..']'
            end
        end

        return require('vim.lsp.diagnostic').on_publish_diagnostics(nil, params, client_id)
    end

    local function filter_commonjs_diagnostics(diagnostic)
        if diagnostic.severity == 4 and diagnostic.code ~= 6133 then
            return true
        end

        return false
    end

    nvim_lsp_installer.setup {
        automatic_installation = true
    }

    for _, server in ipairs(nvim_lsp_installer.get_installed_servers()) do
        if server.name == 'tsserver' then  
            nvim_lsp[server.name].setup {
                on_attach = on_attach,
                filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript" },
                handlers = {
                    [ "textDocument/publishDiagnostics" ] = function(_, params, client_id)
                        return format_diagnostics(params, client_id, "TSServer", filter_commonjs_diagnostics)
                    end
                },
            }
        else
            nvim_lsp[server.name].setup {
                on_attach = on_attach,
            }
        end
    end

EOF
