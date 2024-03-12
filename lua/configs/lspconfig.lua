local configs = require("nvchad.configs.lspconfig")

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "clangd", "angularls", "jdtls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_init = on_init,
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- angular
--local project_library_path = "/path/to/project/lib"
--local cmd = {"ngserver", "--stdio", "--tsProbeLocations", project_library_path , "--ngProbeLocations", project_library_path}

--require'lspconfig'.angularls.setup{
--  cmd = cmd,
--  on_new_config = function(new_config)
--    new_config.cmd = cmd
--  end,
--}

-- require'lspconfig'.custom_elements_ls.setup{}
require'lspconfig'.angularls.setup({})
require'lspconfig'.jdtls.setup{}
