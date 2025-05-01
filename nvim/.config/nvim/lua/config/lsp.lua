vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspConfig", {}),
    callback = function(args)
    
      local client = vim.lsp.get_client_by_id(args.data.client_id)
      local methods = vim.lsp.protocol.Methods


      if client.supports_method(methods.textDocument_completion) then
        vim.lsp.completion.enable(true, client.id, args.buf, {autotrigger = true})
      end

      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
      vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
      vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
      vim.keymap.set("n", "<leader>f", function()
        vim.lsp.buf.format { async = true }
      end, {buffer=args.buf})      


    end,
})

vim.api.nvim_create_autocmd("LspDetach", { command = "setl foldexpr<" })

vim.lsp.config("*", { root_markers = { ".git" } })

vim.lsp.enable({
	"clangd",
	"lua_ls",
	"pyright",
	"bitbake_ls",
})
