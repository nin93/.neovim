return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "night",
    sidebars = { "qf", "vista_kind", "packer" },
    styles = {
      sidebars = "dark", -- style for sidebars, see below
      floats = "dark", -- style for floating windows
    },
    on_colors = function(c)
      c.bg = "#151515"
      c.bg_dark = "#151515"
      c.bg_float = "#151515"
      c.bg_highlight = "#171717"
      c.bg_popup = "#191919"
      c.bg_search = "#191919"
      c.bg_sidebar = "#151515"
      c.bg_statusline = "#151515"
      c.bg_visual = "#272727"
      c.black = "#171717"
      c.blue = "#7aa2f7"
      c.blue0 = "#3d59a1"
      c.blue1 = "#2ac3de"
      c.blue2 = "#0db9d7"
      c.blue5 = "#89ddff"
      c.blue6 = "#b4f9f8"
      c.blue7 = "#394b70"
      c.border = "#252525"
      c.border_highlight = "#353535"
      c.comment = "#565f89"
      c.cyan = "#7dcfff"
      c.dark3 = "#545c7e"
      c.dark5 = "#737aa2"
      c.error = "#db4b4b"
      c.fg = "#e8e8e8"
      c.fg_dark = "#d1d1d1"
      c.fg_float = "#bababa"
      c.fg_gutter = "#353535"
      c.fg_sidebar = "#bababa"
      c.green = "#9ece6a"
      c.green1 = "#73daca"
      c.green2 = "#41a6b5"
      c.hint = "#1abc9c"
      c.info = "#0db9d7"
      c.magenta = "#bb9af7"
      c.magenta2 = "#ff007c"
      c.none = "NONE"
      c.orange = "#ff9e64"
      c.purple = "#9d7cd8"
      c.red = "#f7768e"
      c.red1 = "#db4b4b"
      c.teal = "#1abc9c"
      c.terminal_black = "#414868"
      c.todo = "#7aa2f7"
      c.warning = "#e0af68"
      c.yellow = "#e0af68"

      c.git = {
        add = "#8ab55c",
        change = "#e0af68",
        delete = "#f7768e",
        ignore = "#bababa",
      }

      c.gitSigns = {
        add = "#8ab55c",
        change = "#e0af68",
        delete = "#f7768e",
      }

      c.delta = {
        add = "#414868",
        delete = "#713137",
      }

      c.diff = {
        add = "#20303b",
        change = "#1f2231",
        delete = "#37222c",
        text = "#394b70",
      }
    end,
    on_highlights = function(hl, c)
      local prompt = "#191919"

      -- Telescope
      -- hl.TelescopeNormal = {
      --   bg = c.bg_dark,
      --   fg = c.fg_dark,
      -- }
      -- hl.TelescopeBorder = {
      --   bg = c.bg_dark,
      --   fg = c.bg_dark,
      -- }
      -- hl.TelescopePromptNormal = {
      --   bg = prompt,
      -- }
      -- hl.TelescopePromptBorder = {
      --   bg = prompt,
      --   fg = prompt,
      -- }
      -- hl.TelescopePromptTitle = {
      --   bg = prompt,
      --   fg = prompt,
      -- }
      -- hl.TelescopePreviewTitle = {
      --   bg = c.bg_dark,
      --   fg = c.bg_dark,
      -- }
      -- hl.TelescopeResultsTitle = {
      --   bg = c.bg_dark,
      --   fg = c.bg_dark,
      -- }
    end,
  },
}
