return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        yamlls = {
          settings = {
            yaml = {
              schemas = require("nvim-k8s-crd").schemas(),
              validate = true,
              hover = true,
            },
          },
        },
      },
    },
  },
}
