local status, mason = pcall(require, 'mason')
if (not status) then
  print('mason is not installed')
  return
end

local status2, lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then return end

mason.setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

lspconfig.setup {
  ensure_installed = { 'tsserver', 'sumneko_lua', 'html', 'cssls'}
}
