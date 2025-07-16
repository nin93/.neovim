---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "rust",
      "c",
      "css",
      "gitcommit",
      "markdown",
      "tsx",
      "typescript",
      "javascript",
      "json",
      "bash",
    },
  },
}
