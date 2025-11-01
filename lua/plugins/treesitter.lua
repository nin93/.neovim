---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "rust",
      "tsx",
      "typescript",
      "javascript",
      "c",
      "bash",
      "lua",
      "html",
      "markdown",
      "css",
      "yaml",
      "toml",
      "json",
      "dockerfile",
      "gitcommit",
    },
  },
}
