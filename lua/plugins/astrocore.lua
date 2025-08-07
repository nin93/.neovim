-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics = { virtual_text = true, virtual_lines = false }, -- diagnostic settings on startup
      highlighturl = true, -- highlight URLs at start
      notifications = false, -- disable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- passed to `vim.filetype.add`
    filetypes = {
      -- see `:h vim.filetype.add` for usage
      -- extension = {
      --   foo = "fooscript",
      -- },
      -- filename = {
      --   [".foorc"] = "fooscript",
      -- },
      -- pattern = {
      --   [".*/etc/foo/.*"] = "fooscript",
      -- },
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "yes", -- sets vim.opt.signcolumn to yes
        wrap = false, -- sets vim.opt.wrap
        shell = "/bin/zsh",
      },
      g = { -- vim.g.<key>
        neovide_cursor_animation_length = 0,
        neovide_padding_right = 10,
        neovide_padding_left = 10,
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        ["<Leader>c"] = {
          function()
            local bufs = vim.fn.getbufinfo { buflisted = 1 }
            require("astrocore.buffer").close(0)
            if not bufs[2] then require("snacks").dashboard() end
          end,

          desc = "Close buffer",
        },
        ["<Leader>G"] = { "<cmd>Git<cr>", desc = "Git" },
        ["<C-n>"] = { "<cmd>Neotree toggle<cr>", desc = "Toggle Explorer" },
        -- second key is the lefthand side of the map

        -- remap f motion with Hop
        ["f"] = { "<cmd>HopChar1CurrentLineAC<cr>" },

        -- remap F motion with Hop
        ["F"] = { "<cmd>HopChar1CurrentLineBC<cr>" },

        -- remap t motion with Hop
        ["t"] = {
          function()
            require("hop").hint_char1 {
              direction = require("hop.hint").HintDirection.AFTER_CURSOR,
              current_line_only = true,
              hint_offset = -1,
            }
          end,
        },

        -- remap T motion with Hop
        ["T"] = {
          function()
            require("hop").hint_char1 {
              direction = require("hop.hint").HintDirection.BEFORE_CURSOR,
              current_line_only = true,
              hint_offset = -1,
            }
          end,
        },

        -- file motion with Hop
        ["S"] = { "<cmd>HopPatternMW<cr>", desc = "Jump to pattern" },

        -- navigate buffer tabs
        ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },
      },
    },
  },
}
