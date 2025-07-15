---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "tsx",
      "rust",
      "c",
      "css",
      "gitcommit",
      "markdown",
      "typescript",
      "javascript",
      "bash",
    },
  },
}
