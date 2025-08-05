return {
  "ficcdaf/ashen.nvim",
  -- optional but recommended,
  -- pin to the latest stable release:
  tag = "v0.11.0",
  lazy = false,
  priority = 1000,
  -- configuration is optional!
  opts = {
    style_presets = {
      bold_functions = true,
      italic_comments = true,
    },
    colors = {
      background = "#151515",
    },
    terminal = {
      colors = {
        [0] = "#303030",
        [1] = "#832e31",
        [2] = "#fc595f",
        [3] = "#a63c40",
        [4] = "#ba8586",
        [5] = "#d3494e",
        [6] = "#df9395",
        [7] = "#f5f5f5",
        [8] = "#5d6f71",
        [9] = "#832e31",
        [10] = "#fc595f",
        [11] = "#a63c40",
        [12] = "#ba8586",
        [13] = "#d3494e",
        [14] = "#df9395",
        [15] = "#f5f5f5",
      },
    },
  },
}
