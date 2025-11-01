---@type LazySpec
return {
  -- use mason-tool-installer for automatically installing Mason packages
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      -- Make sure to use the names found in `:Mason`
      ensure_installed = {
        "arduino-language-server",
        "bash-language-server",
        "docker-compose-language-service",
        "dockerfile-language-server",
        "lua-language-server",
        "rust-analyzer",
        "stylua",
        "tailwindcss-language-server",
      },
    },
  },
}
