---@type LazySpec
return {
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function() require("lsp_signature").setup() end,
  -- },

  -- == Examples of Overriding Plugins ==

  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header

      local sprite = {
        [[                     ▄▄▄                     ]],
        [[▄▄▄                 ▄▄▄▄                     ]],
        [[▀▄▄▄▄             ▄▄▄▄▄                      ]],
        [[ ▀▄▄▄▄           ▄▄▄▄▄▀                      ]],
        [[  ▀▄▄▄          ▄▄▄▀                         ]],
        [[   ▀▄▄▄       ▄▄▄▄▀                          ]],
        [[    ▀▄▄▄▄▄▄▄▄▄▄▄▄▄                           ]],
        [[  ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄                      ]],
        [[ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄                   ]],
        [[ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄           ]],
        [[ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄ ▀▀▄▄▄▄▄▄▄▄▄▄▄▄▄▄          ]],
        [[▄▄▄▄▄▄▄▄▄▄▄▄▄▄▀▄▄▄▄▄ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄         ]],
        [[▄▄▄▄▄▀▄▄▄▄▄▄▀   ▀▀▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄         ]],
        [[ ▀▄▀ ▄▄▄▄▄▄▀ ▄▄▄▄  ▀▄▄▄▄▄▄▄▄▄▄▄▄▄▄▀          ]],
        [[      ▀▄▄▀  ▄▄▄▄▄▄▄▄▄▀  ▄▄▄▄▄▄▄▄▄▄           ]],
        [[            ▀▀▀▄▄▀▀▀     ▄▄▄▄▄▄▄▄▀           ]],
        [[               ▄▄▄▄▄     ▀▀▄▄▄▄▄▄            ]],
        [[            ▄▄▄▄▄▄▄▄▄▄▄   ▄▄▄▄▄▄▄            ]],
        [[       ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▀            ]],
        [[   ▄▄ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄          ]],
        [[   ▀▄▄▄▄▄▄▄▄▄▄▀▀▀▀▀▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄      ]],
        [[    ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄ ▀▀▄▄▄▄▄▄▄▄▄▄ ]],
        [[  ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▀   ▀▄▄▄▄▄▄▄▄▄▀]],
        [[   ▀▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▀▀▄▄▄▀      ▀▄▄▀ ▀▀   ]],
        [[     ▀▀▀    ▀▀▀▀▀▀▀▀                         ]],
      }

      local function set_colors()
        vim.api.nvim_set_hl(0, "PokePixel_0_21", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_0_24", { fg = "#606c64", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_0_27", { fg = "#000100", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_1_0", { fg = "#000000", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_1_3", { fg = "#3c433d", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_1_6", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_1_26", { fg = "#000100", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_1_29", { fg = "#606b63", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_1_32", { fg = "#3e453e", bg = "#3b403c" })
        vim.api.nvim_set_hl(0, "PokePixel_1_35", { fg = "#000000", bg = "#000100" })
        vim.api.nvim_set_hl(0, "PokePixel_2_0", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_2_3", { fg = "#000000", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_2_6", { fg = "#3c433d", bg = "#3e453e" })
        vim.api.nvim_set_hl(0, "PokePixel_2_9", { fg = "#3c433d", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_2_12", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_2_28", { fg = "#000100" })
        vim.api.nvim_set_hl(0, "PokePixel_2_31", { fg = "#606c64", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_2_34", { fg = "#3c433d", bg = "#606b63" })
        vim.api.nvim_set_hl(0, "PokePixel_2_37", { fg = "#3c433d", bg = "#3a3f3b" })
        vim.api.nvim_set_hl(0, "PokePixel_2_40", { fg = "#000000", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_3_1", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_3_4", { fg = "#000000", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_3_7", { fg = "#3c433d", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_3_10", { fg = "#3c433d", bg = "#3e453e" })
        vim.api.nvim_set_hl(0, "PokePixel_3_13", { fg = "#000000", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_3_27", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_3_30", { fg = "#616d63", bg = "#000100" })
        vim.api.nvim_set_hl(0, "PokePixel_3_33", { fg = "#3b413c", bg = "#3b403c" })
        vim.api.nvim_set_hl(0, "PokePixel_3_36", { fg = "#000000", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_3_39", { fg = "#000000", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_3_42", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_4_2", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_4_5", { fg = "#000000", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_4_8", { fg = "#3c433d", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_4_11", { fg = "#000000", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_4_24", { fg = "#010201", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_4_27", { fg = "#3b413c", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_4_30", { fg = "#000000", bg = "#3b413c" })
        vim.api.nvim_set_hl(0, "PokePixel_4_33", { fg = "#010201" })
        vim.api.nvim_set_hl(0, "PokePixel_5_3", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_5_6", { fg = "#000000", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_5_9", { fg = "#3c433d", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_5_12", { fg = "#000000", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_5_22", { fg = "#000100" })
        vim.api.nvim_set_hl(0, "PokePixel_5_25", { fg = "#606b63", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_5_28", { fg = "#3e453e", bg = "#616d63" })
        vim.api.nvim_set_hl(0, "PokePixel_5_31", { fg = "#000000", bg = "#3b413c" })
        vim.api.nvim_set_hl(0, "PokePixel_5_34", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_6_4", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_6_7", { fg = "#000000", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_6_10", { fg = "#967f41", bg = "#3e453e" })
        vim.api.nvim_set_hl(0, "PokePixel_6_13", { fg = "#222525", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_6_16", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_6_19", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_6_22", { fg = "#5c655f", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_6_25", { fg = "#ffce47", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_6_28", { fg = "#5e6863", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_6_31", { fg = "#252425", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_6_34", { fg = "#3c433d", bg = "#606b63" })
        vim.api.nvim_set_hl(0, "PokePixel_6_37", { fg = "#3c433d", bg = "#3a3f3b" })
        vim.api.nvim_set_hl(0, "PokePixel_6_40", { fg = "#343736", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_6_43", { fg = "#080008" })
        vim.api.nvim_set_hl(0, "PokePixel_7_2", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_7_5", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_7_8", { fg = "#100008" })
        vim.api.nvim_set_hl(0, "PokePixel_7_11", { fg = "#1f2020", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_7_14", { fg = "#6b6249", bg = "#222525" })
        vim.api.nvim_set_hl(0, "PokePixel_7_17", { fg = "#ffdc7b", bg = "#ffdf47" })
        vim.api.nvim_set_hl(0, "PokePixel_7_20", { fg = "#ffce47", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_7_23", { fg = "#ffce47", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_7_26", { fg = "#ffe59d", bg = "#5c655f" })
        vim.api.nvim_set_hl(0, "PokePixel_7_29", { fg = "#414141", bg = "#5c655f" })
        vim.api.nvim_set_hl(0, "PokePixel_7_32", { fg = "#5e6863", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_7_35", { fg = "#3c433d", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_7_38", { fg = "#242524", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_7_41", { fg = "#5a655e", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_7_44", { fg = "#5d6660", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_7_47", { fg = "#5d6660", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_7_50", { fg = "#5c655f", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_7_53", { fg = "#ffce47", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_7_56", { fg = "#656e5a", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_7_59", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_7_62", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_8_1", { fg = "#000000", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_8_4", { fg = "#3c433d", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_8_7", { fg = "#3c433d", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_8_10", { fg = "#252425", bg = "#1f2020" })
        vim.api.nvim_set_hl(0, "PokePixel_8_13", { fg = "#5e6863", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_8_16", { fg = "#252425", bg = "#6b6249" })
        vim.api.nvim_set_hl(0, "PokePixel_8_19", { fg = "#5e6863", bg = "#464646" })
        vim.api.nvim_set_hl(0, "PokePixel_8_22", { fg = "#5d6660", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_8_25", { fg = "#5d6660", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_8_28", { fg = "#5a655e", bg = "#414141" })
        vim.api.nvim_set_hl(0, "PokePixel_8_31", { fg = "#3d423f", bg = "#dab653" })
        vim.api.nvim_set_hl(0, "PokePixel_8_34", { fg = "#3c433d", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_8_37", { fg = "#3c433d", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_8_40", { fg = "#3c433d", bg = "#242524" })
        vim.api.nvim_set_hl(0, "PokePixel_8_43", { fg = "#3c433d", bg = "#3d423f" })
        vim.api.nvim_set_hl(0, "PokePixel_8_46", { fg = "#3c433d", bg = "#3e453e" })
        vim.api.nvim_set_hl(0, "PokePixel_8_49", { fg = "#3c433d", bg = "#3e453e" })
        vim.api.nvim_set_hl(0, "PokePixel_8_52", { fg = "#3c433d", bg = "#5c655f" })
        vim.api.nvim_set_hl(0, "PokePixel_8_55", { fg = "#3c433d", bg = "#5c655f" })
        vim.api.nvim_set_hl(0, "PokePixel_8_58", { fg = "#3b423b", bg = "#656e5a" })
        vim.api.nvim_set_hl(0, "PokePixel_8_61", { fg = "#ffce47", bg = "#656e5a" })
        vim.api.nvim_set_hl(0, "PokePixel_8_64", { fg = "#ffce47", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_8_67", { fg = "#ffce47", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_8_70", { fg = "#9e812f", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_8_73", { fg = "#031416" })
        vim.api.nvim_set_hl(0, "PokePixel_9_1", { fg = "#000000", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_9_4", { fg = "#363d38", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_9_7", { fg = "#363d38", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_9_10", { fg = "#5e6863", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_9_13", { fg = "#252425", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_9_16", { fg = "#606b63", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_9_19", { fg = "#3a3f3b", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_9_22", { fg = "#252425", bg = "#3e453e" })
        vim.api.nvim_set_hl(0, "PokePixel_9_25", { fg = "#252425", bg = "#3e453e" })
        vim.api.nvim_set_hl(0, "PokePixel_9_28", { fg = "#252425", bg = "#242524" })
        vim.api.nvim_set_hl(0, "PokePixel_9_31", { fg = "#3c433d", bg = "#242524" })
        vim.api.nvim_set_hl(0, "PokePixel_9_34", { fg = "#3c433d", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_9_37", { fg = "#232523", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_9_40", { fg = "#252425", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_9_43", { fg = "#3c433d", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_9_46", { fg = "#252425", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_9_49", { fg = "#000000", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_9_52", { fg = "#000000", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_9_55", { fg = "#3e453e", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_9_58", { fg = "#3c433d", bg = "#3b423b" })
        vim.api.nvim_set_hl(0, "PokePixel_9_61", { fg = "#3c433d", bg = "#3b423b" })
        vim.api.nvim_set_hl(0, "PokePixel_9_64", { fg = "#3c433d", bg = "#4b534d" })
        vim.api.nvim_set_hl(0, "PokePixel_9_67", { fg = "#3c433d", bg = "#4b534d" })
        vim.api.nvim_set_hl(0, "PokePixel_9_70", { fg = "#3b423b", bg = "#ffe8a8" })
        vim.api.nvim_set_hl(0, "PokePixel_9_73", { fg = "#ffce47", bg = "#9e812f" })
        vim.api.nvim_set_hl(0, "PokePixel_9_76", { fg = "#3d423f", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_9_79", { fg = "#242524", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_9_82", { fg = "#010505" })
        vim.api.nvim_set_hl(0, "PokePixel_9_85", { fg = "#010505" })
        vim.api.nvim_set_hl(0, "PokePixel_9_88", { fg = "#030603" })
        vim.api.nvim_set_hl(0, "PokePixel_9_91", { fg = "#d37164", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_9_94", { fg = "#de5765", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_9_97", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_10_1", { fg = "#000000", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_10_4", { fg = "#393f3b", bg = "#363d38" })
        vim.api.nvim_set_hl(0, "PokePixel_10_7", { fg = "#55605a", bg = "#5b645f" })
        vim.api.nvim_set_hl(0, "PokePixel_10_10", { fg = "#252425", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_10_13", { fg = "#5e6863", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_10_16", { fg = "#000018", bg = "#606b63" })
        vim.api.nvim_set_hl(0, "PokePixel_10_19", { fg = "#ffd347", bg = "#000100" })
        vim.api.nvim_set_hl(0, "PokePixel_10_22", { fg = "#252425", bg = "#eeb117" })
        vim.api.nvim_set_hl(0, "PokePixel_10_25", { fg = "#252425", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_10_28", { fg = "#4e3037", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_10_31", { fg = "#ce6d6f", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_10_34", { fg = "#dc7063", bg = "#232523" })
        vim.api.nvim_set_hl(0, "PokePixel_10_37", { fg = "#232523", bg = "#dc7063" })
        vim.api.nvim_set_hl(0, "PokePixel_10_40", { fg = "#3c433d", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_10_43", { fg = "#3c433d", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_10_46", { fg = "#3c433d", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_10_49", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_10_53", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_10_56", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_10_59", { fg = "#000000", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_10_62", { fg = "#3c433d", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_10_65", { fg = "#3c433d", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_10_68", { fg = "#252425", bg = "#3b423b" })
        vim.api.nvim_set_hl(0, "PokePixel_10_71", { fg = "#252425", bg = "#3b423b" })
        vim.api.nvim_set_hl(0, "PokePixel_10_74", { fg = "#252425", bg = "#242524" })
        vim.api.nvim_set_hl(0, "PokePixel_10_77", { fg = "#5e6863", bg = "#5a655e" })
        vim.api.nvim_set_hl(0, "PokePixel_10_80", { fg = "#3c433d", bg = "#48262a" })
        vim.api.nvim_set_hl(0, "PokePixel_10_83", { fg = "#252425", bg = "#dd616f" })
        vim.api.nvim_set_hl(0, "PokePixel_10_86", { fg = "#3c433d", bg = "#d37164" })
        vim.api.nvim_set_hl(0, "PokePixel_10_89", { fg = "#3c433d", bg = "#5e4841" })
        vim.api.nvim_set_hl(0, "PokePixel_10_92", { fg = "#3b423b", bg = "#de5765" })
        vim.api.nvim_set_hl(0, "PokePixel_10_95", { fg = "#de5765", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_10_98", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_11_0", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_11_3", { fg = "#5e6863", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_11_6", { fg = "#343b36", bg = "#393f3b" })
        vim.api.nvim_set_hl(0, "PokePixel_11_9", { fg = "#5c6560", bg = "#212221" })
        vim.api.nvim_set_hl(0, "PokePixel_11_12", { fg = "#3c433d", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_11_15", { fg = "#3c433d", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_11_18", { fg = "#463d2a", bg = "#60471b" })
        vim.api.nvim_set_hl(0, "PokePixel_11_21", { fg = "#232523", bg = "#60471b" })
        vim.api.nvim_set_hl(0, "PokePixel_11_24", { fg = "#252425", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_11_27", { fg = "#ffb6a4", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_11_30", { fg = "#e25765", bg = "#ff9d9c" })
        vim.api.nvim_set_hl(0, "PokePixel_11_33", { fg = "#e25765", bg = "#ce6d6f" })
        vim.api.nvim_set_hl(0, "PokePixel_11_36", { fg = "#3e453e", bg = "#232523" })
        vim.api.nvim_set_hl(0, "PokePixel_11_39", { fg = "#000000", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_11_42", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_11_45", { fg = "#000000", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_11_48", { fg = "#363b38", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_11_51", { fg = "#59635e", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_11_54", { fg = "#5e6863", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_11_57", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_11_61", { fg = "#000000", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_11_64", { fg = "#606b63", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_11_67", { fg = "#606b63", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_11_70", { fg = "#5e6863", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_11_73", { fg = "#3c433d", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_11_76", { fg = "#3d423f", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_11_79", { fg = "#242524", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_11_82", { fg = "#5d6660", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_11_85", { fg = "#5d6660", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_11_88", { fg = "#242524", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_11_91", { fg = "#3d423f", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_11_94", { fg = "#3c433d", bg = "#3b423b" })
        vim.api.nvim_set_hl(0, "PokePixel_11_97", { fg = "#3c433d", bg = "#de5765" })
        vim.api.nvim_set_hl(0, "PokePixel_11_100", { fg = "#fd554b", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_11_103", { fg = "#080000" })
        vim.api.nvim_set_hl(0, "PokePixel_12_0", { fg = "#000000", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_12_3", { fg = "#5e6863", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_12_6", { fg = "#3c433d", bg = "#5c6560" })
        vim.api.nvim_set_hl(0, "PokePixel_12_9", { fg = "#3c433d", bg = "#343b36" })
        vim.api.nvim_set_hl(0, "PokePixel_12_12", { fg = "#000000", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_12_15", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_12_18", { fg = "#080000", bg = "#232523" })
        vim.api.nvim_set_hl(0, "PokePixel_12_21", { fg = "#ffb2a4", bg = "#dc7063" })
        vim.api.nvim_set_hl(0, "PokePixel_12_24", { fg = "#ffb6a4", bg = "#ffb6a4" })
        vim.api.nvim_set_hl(0, "PokePixel_12_27", { fg = "#e35765", bg = "#ffb6a4" })
        vim.api.nvim_set_hl(0, "PokePixel_12_30", { fg = "#5e6863", bg = "#e25765" })
        vim.api.nvim_set_hl(0, "PokePixel_12_33", { fg = "#000000", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_12_36", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_12_42", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_12_45", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_12_48", { fg = "#000000", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_12_51", { fg = "#5e6863", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_12_54", { fg = "#5e6863", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_12_57", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_12_60", { fg = "#2f3531", bg = "#000100" })
        vim.api.nvim_set_hl(0, "PokePixel_12_63", { fg = "#252425", bg = "#3a3f3b" })
        vim.api.nvim_set_hl(0, "PokePixel_12_66", { fg = "#3c433c", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_12_69", { fg = "#3c433c", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_12_72", { fg = "#26261e", bg = "#242524" })
        vim.api.nvim_set_hl(0, "PokePixel_12_75", { fg = "#59635e", bg = "#5a655e" })
        vim.api.nvim_set_hl(0, "PokePixel_12_78", { fg = "#5e6863", bg = "#5d6660" })
        vim.api.nvim_set_hl(0, "PokePixel_12_81", { fg = "#5e6863", bg = "#5d6660" })
        vim.api.nvim_set_hl(0, "PokePixel_12_84", { fg = "#252425", bg = "#5a655e" })
        vim.api.nvim_set_hl(0, "PokePixel_12_87", { fg = "#252425", bg = "#242524" })
        vim.api.nvim_set_hl(0, "PokePixel_12_90", { fg = "#3c433c", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_12_93", { fg = "#3c433c", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_12_96", { fg = "#cc3b11", bg = "#ac3831" })
        vim.api.nvim_set_hl(0, "PokePixel_12_99", { fg = "#000000", bg = "#080000" })
        vim.api.nvim_set_hl(0, "PokePixel_13_1", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_13_4", { fg = "#000000", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_13_7", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_13_11", { fg = "#000000", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_13_14", { fg = "#bc827a", bg = "#b76e62" })
        vim.api.nvim_set_hl(0, "PokePixel_13_17", { fg = "#bc827a", bg = "#ffb2a4" })
        vim.api.nvim_set_hl(0, "PokePixel_13_20", { fg = "#e35765", bg = "#e35765" })
        vim.api.nvim_set_hl(0, "PokePixel_13_23", { fg = "#676a66", bg = "#e35765" })
        vim.api.nvim_set_hl(0, "PokePixel_13_26", { fg = "#000000", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_13_29", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_13_33", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_13_36", { fg = "#f1f3f2", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_13_39", { fg = "#424643", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_13_42", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_13_47", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_13_50", { fg = "#000000", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_13_53", { fg = "#1e201f", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_13_56", { fg = "#000000", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_13_59", { fg = "#000000", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_13_62", { fg = "#424742", bg = "#3c433c" })
        vim.api.nvim_set_hl(0, "PokePixel_13_65", { fg = "#1f211f", bg = "#2f312e" })
        vim.api.nvim_set_hl(0, "PokePixel_13_68", { fg = "#3c433d", bg = "#343735" })
        vim.api.nvim_set_hl(0, "PokePixel_13_71", { fg = "#3c433d", bg = "#26261e" })
        vim.api.nvim_set_hl(0, "PokePixel_13_74", { fg = "#323733", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_13_77", { fg = "#252425", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_13_80", { fg = "#5e6863", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_13_83", { fg = "#5e6863", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_13_86", { fg = "#252425", bg = "#3c433c" })
        vim.api.nvim_set_hl(0, "PokePixel_13_89", { fg = "#000000", bg = "#cc3b11" })
        vim.api.nvim_set_hl(0, "PokePixel_13_92", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_14_6", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_14_9", { fg = "#000000", bg = "#bc827a" })
        vim.api.nvim_set_hl(0, "PokePixel_14_12", { fg = "#000000", bg = "#676a66" })
        vim.api.nvim_set_hl(0, "PokePixel_14_15", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_14_20", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_14_23", { fg = "#ffffff", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_14_26", { fg = "#333333", bg = "#282e29" })
        vim.api.nvim_set_hl(0, "PokePixel_14_29", { fg = "#333333", bg = "#424643" })
        vim.api.nvim_set_hl(0, "PokePixel_14_32", { fg = "#38403a", bg = "#3e453e" })
        vim.api.nvim_set_hl(0, "PokePixel_14_35", { fg = "#38403a", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_14_38", { fg = "#3c433d", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_14_41", { fg = "#3c433d", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_14_44", { fg = "#000000", bg = "#303432" })
        vim.api.nvim_set_hl(0, "PokePixel_14_47", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_14_52", { fg = "#000000", bg = "#080008" })
        vim.api.nvim_set_hl(0, "PokePixel_14_55", { fg = "#3e453e", bg = "#1f211f" })
        vim.api.nvim_set_hl(0, "PokePixel_14_58", { fg = "#252425", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_14_61", { fg = "#ffffff", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_14_64", { fg = "#59645e", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_14_67", { fg = "#222321", bg = "#3a423b" })
        vim.api.nvim_set_hl(0, "PokePixel_14_70", { fg = "#2f3531", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_14_73", { fg = "#2f3531", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_14_76", { fg = "#5e6863", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_14_79", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_15_12", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_15_15", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_15_18", { fg = "#030503" })
        vim.api.nvim_set_hl(0, "PokePixel_15_21", { fg = "#000000", bg = "#ffffff" })
        vim.api.nvim_set_hl(0, "PokePixel_15_24", { fg = "#000000", bg = "#38403a" })
        vim.api.nvim_set_hl(0, "PokePixel_15_27", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_15_30", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_15_33", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_15_41", { fg = "#000000", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_15_44", { fg = "#ffffff", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_15_47", { fg = "#333333", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_15_50", { fg = "#1e2220", bg = "#3d423f" })
        vim.api.nvim_set_hl(0, "PokePixel_15_53", { fg = "#626665", bg = "#59645e" })
        vim.api.nvim_set_hl(0, "PokePixel_15_56", { fg = "#323733", bg = "#2f3531" })
        vim.api.nvim_set_hl(0, "PokePixel_15_59", { fg = "#252425", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_15_62", { fg = "#000000", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_15_65", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_16_15", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_16_18", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_16_21", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_16_24", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_16_27", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_16_35", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_16_38", { fg = "#030503" })
        vim.api.nvim_set_hl(0, "PokePixel_16_41", { fg = "#000000", bg = "#333333" })
        vim.api.nvim_set_hl(0, "PokePixel_16_44", { fg = "#252425", bg = "#f0f7f7" })
        vim.api.nvim_set_hl(0, "PokePixel_16_47", { fg = "#252425", bg = "#626665" })
        vim.api.nvim_set_hl(0, "PokePixel_16_50", { fg = "#384039", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_16_53", { fg = "#fec422", bg = "#3a423b" })
        vim.api.nvim_set_hl(0, "PokePixel_16_56", { fg = "#000000", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_17_12", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_17_15", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_17_18", { fg = "#252425", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_17_21", { fg = "#252425", bg = "#cc3b11" })
        vim.api.nvim_set_hl(0, "PokePixel_17_24", { fg = "#252425", bg = "#cc3b11" })
        vim.api.nvim_set_hl(0, "PokePixel_17_27", { fg = "#252425", bg = "#cc3b11" })
        vim.api.nvim_set_hl(0, "PokePixel_17_30", { fg = "#252425", bg = "#cc3b11" })
        vim.api.nvim_set_hl(0, "PokePixel_17_33", { fg = "#252425", bg = "#cc3b11" })
        vim.api.nvim_set_hl(0, "PokePixel_17_36", { fg = "#1e201e", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_17_39", { fg = "#080008" })
        vim.api.nvim_set_hl(0, "PokePixel_17_42", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_17_48", { fg = "#000000", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_17_51", { fg = "#5e6863", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_17_54", { fg = "#5d6660", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_17_57", { fg = "#5d6660", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_17_60", { fg = "#ffba3e", bg = "#ffbd3e" })
        vim.api.nvim_set_hl(0, "PokePixel_17_63", { fg = "#383f39", bg = "#384039" })
        vim.api.nvim_set_hl(0, "PokePixel_17_66", { fg = "#000000", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_18_7", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_18_10", { fg = "#080008" })
        vim.api.nvim_set_hl(0, "PokePixel_18_13", { fg = "#3e463f", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_18_16", { fg = "#3c433d", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_18_19", { fg = "#3c433d", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_18_22", { fg = "#3c433d", bg = "#303633" })
        vim.api.nvim_set_hl(0, "PokePixel_18_25", { fg = "#3c433d", bg = "#303633" })
        vim.api.nvim_set_hl(0, "PokePixel_18_28", { fg = "#957e40", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_18_31", { fg = "#212727", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_18_34", { fg = "#383f39", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_18_37", { fg = "#383f39", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_18_40", { fg = "#303632", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_18_43", { fg = "#303632", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_18_46", { fg = "#292b29", bg = "#3e463f" })
        vim.api.nvim_set_hl(0, "PokePixel_18_49", { fg = "#292b29", bg = "#3e463f" })
        vim.api.nvim_set_hl(0, "PokePixel_18_52", { fg = "#555143", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_18_55", { fg = "#732a3b", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_18_58", { fg = "#323634", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_18_61", { fg = "#212222", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_18_64", { fg = "#252425", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_18_67", { fg = "#5e6863", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_18_70", { fg = "#3b423b", bg = "#5d6660" })
        vim.api.nvim_set_hl(0, "PokePixel_18_73", { fg = "#ffce47", bg = "#3e453e" })
        vim.api.nvim_set_hl(0, "PokePixel_18_76", { fg = "#3e463f", bg = "#fbc11f" })
        vim.api.nvim_set_hl(0, "PokePixel_18_79", { fg = "#080008", bg = "#fbc11f" })
        vim.api.nvim_set_hl(0, "PokePixel_18_82", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_19_3", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_19_6", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_19_10", { fg = "#080008", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_19_13", { fg = "#343736", bg = "#3e453e" })
        vim.api.nvim_set_hl(0, "PokePixel_19_16", { fg = "#212221", bg = "#3e463f" })
        vim.api.nvim_set_hl(0, "PokePixel_19_19", { fg = "#393f3b", bg = "#1e201e" })
        vim.api.nvim_set_hl(0, "PokePixel_19_22", { fg = "#dd616f", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_19_25", { fg = "#252425", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_19_28", { fg = "#ecc116", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_19_31", { fg = "#ecc116", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_19_34", { fg = "#424842", bg = "#ecbd3a" })
        vim.api.nvim_set_hl(0, "PokePixel_19_37", { fg = "#1d201d", bg = "#212727" })
        vim.api.nvim_set_hl(0, "PokePixel_19_40", { fg = "#3c433d", bg = "#383f39" })
        vim.api.nvim_set_hl(0, "PokePixel_19_43", { fg = "#3c433d", bg = "#cc3911" })
        vim.api.nvim_set_hl(0, "PokePixel_19_46", { fg = "#843e27", bg = "#cc3b11" })
        vim.api.nvim_set_hl(0, "PokePixel_19_49", { fg = "#423d2f", bg = "#cc3b11" })
        vim.api.nvim_set_hl(0, "PokePixel_19_52", { fg = "#de5765", bg = "#292b29" })
        vim.api.nvim_set_hl(0, "PokePixel_19_55", { fg = "#5d6661", bg = "#de5765" })
        vim.api.nvim_set_hl(0, "PokePixel_19_58", { fg = "#5e6863", bg = "#6c736e" })
        vim.api.nvim_set_hl(0, "PokePixel_19_61", { fg = "#252425", bg = "#6c736e" })
        vim.api.nvim_set_hl(0, "PokePixel_19_64", { fg = "#525a54", bg = "#212222" })
        vim.api.nvim_set_hl(0, "PokePixel_19_67", { fg = "#525a54", bg = "#5a655f" })
        vim.api.nvim_set_hl(0, "PokePixel_19_70", { fg = "#5b655f", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_19_73", { fg = "#5b655f", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_19_76", { fg = "#252425", bg = "#3b423b" })
        vim.api.nvim_set_hl(0, "PokePixel_19_79", { fg = "#4b5045", bg = "#ffce47" })
        vim.api.nvim_set_hl(0, "PokePixel_19_82", { fg = "#3a423b", bg = "#3e463f" })
        vim.api.nvim_set_hl(0, "PokePixel_19_85", { fg = "#252425", bg = "#1e201e" })
        vim.api.nvim_set_hl(0, "PokePixel_19_88", { fg = "#303633", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_19_91", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_19_94", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_20_3", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_20_6", { fg = "#010201", bg = "#de5765" })
        vim.api.nvim_set_hl(0, "PokePixel_20_9", { fg = "#be7f71", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_20_12", { fg = "#5d6661", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_20_15", { fg = "#5d6661", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_20_18", { fg = "#5d6660", bg = "#55605a" })
        vim.api.nvim_set_hl(0, "PokePixel_20_21", { fg = "#5d6660", bg = "#393f3b" })
        vim.api.nvim_set_hl(0, "PokePixel_20_24", { fg = "#393f3b", bg = "#393f3b" })
        vim.api.nvim_set_hl(0, "PokePixel_20_27", { fg = "#393f3b", bg = "#dd616f" })
        vim.api.nvim_set_hl(0, "PokePixel_20_30", { fg = "#dd616f", bg = "#232725" })
        vim.api.nvim_set_hl(0, "PokePixel_20_33", { fg = "#010505", bg = "#353c28" })
        vim.api.nvim_set_hl(0, "PokePixel_20_36", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_20_39", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_20_42", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_20_45", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_20_48", { fg = "#030706" })
        vim.api.nvim_set_hl(0, "PokePixel_20_51", { fg = "#000000", bg = "#dd616f" })
        vim.api.nvim_set_hl(0, "PokePixel_20_54", { fg = "#5e6863", bg = "#5d6661" })
        vim.api.nvim_set_hl(0, "PokePixel_20_57", { fg = "#252425", bg = "#5d6661" })
        vim.api.nvim_set_hl(0, "PokePixel_20_60", { fg = "#525a54", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_20_63", { fg = "#525a54", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_20_66", { fg = "#e46d75", bg = "#525a54" })
        vim.api.nvim_set_hl(0, "PokePixel_20_69", { fg = "#343c38", bg = "#de5765" })
        vim.api.nvim_set_hl(0, "PokePixel_20_72", { fg = "#5d6660", bg = "#2d332f" })
        vim.api.nvim_set_hl(0, "PokePixel_20_75", { fg = "#5d6660", bg = "#5b655f" })
        vim.api.nvim_set_hl(0, "PokePixel_20_78", { fg = "#5e6863", bg = "#636b5c" })
        vim.api.nvim_set_hl(0, "PokePixel_20_81", { fg = "#1f2020", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_20_84", { fg = "#000000", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_20_87", { fg = "#000000", bg = "#323733" })
        vim.api.nvim_set_hl(0, "PokePixel_20_90", { fg = "#303633", bg = "#303633" })
        vim.api.nvim_set_hl(0, "PokePixel_20_93", { fg = "#303633", bg = "#303633" })
        vim.api.nvim_set_hl(0, "PokePixel_20_96", { fg = "#323733", bg = "#2d332f" })
        vim.api.nvim_set_hl(0, "PokePixel_20_99", { fg = "#252425", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_20_102", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_20_105", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_20_108", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_21_4", { fg = "#080000", bg = "#010201" })
        vim.api.nvim_set_hl(0, "PokePixel_21_7", { fg = "#606b63", bg = "#7e574b" })
        vim.api.nvim_set_hl(0, "PokePixel_21_10", { fg = "#2d332f", bg = "#de5765" })
        vim.api.nvim_set_hl(0, "PokePixel_21_13", { fg = "#2d332f", bg = "#5d6661" })
        vim.api.nvim_set_hl(0, "PokePixel_21_16", { fg = "#5e6863", bg = "#5d6660" })
        vim.api.nvim_set_hl(0, "PokePixel_21_19", { fg = "#5e6863", bg = "#5d6660" })
        vim.api.nvim_set_hl(0, "PokePixel_21_22", { fg = "#252425", bg = "#55605a" })
        vim.api.nvim_set_hl(0, "PokePixel_21_25", { fg = "#5e6863", bg = "#212221" })
        vim.api.nvim_set_hl(0, "PokePixel_21_28", { fg = "#5d6660", bg = "#48262a" })
        vim.api.nvim_set_hl(0, "PokePixel_21_31", { fg = "#5d6660", bg = "#010505" })
        vim.api.nvim_set_hl(0, "PokePixel_21_34", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_21_37", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_21_40", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_21_43", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_21_46", { fg = "#5d6660", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_21_49", { fg = "#5d6660", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_21_52", { fg = "#252425", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_21_55", { fg = "#5e6863", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_21_58", { fg = "#5b655f", bg = "#525a54" })
        vim.api.nvim_set_hl(0, "PokePixel_21_61", { fg = "#2d332f", bg = "#de5765" })
        vim.api.nvim_set_hl(0, "PokePixel_21_64", { fg = "#5d6660", bg = "#343c38" })
        vim.api.nvim_set_hl(0, "PokePixel_21_67", { fg = "#5d6660", bg = "#4f514f" })
        vim.api.nvim_set_hl(0, "PokePixel_21_70", { fg = "#5a655e", bg = "#5d6660" })
        vim.api.nvim_set_hl(0, "PokePixel_21_73", { fg = "#242524", bg = "#5d6660" })
        vim.api.nvim_set_hl(0, "PokePixel_21_76", { fg = "#3b423b", bg = "#1f2020" })
        vim.api.nvim_set_hl(0, "PokePixel_21_79", { fg = "#de5765", bg = "#100008" })
        vim.api.nvim_set_hl(0, "PokePixel_21_82", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_21_86", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_21_89", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_21_92", { fg = "#010505", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_21_95", { fg = "#511d1c", bg = "#3a423b" })
        vim.api.nvim_set_hl(0, "PokePixel_21_98", { fg = "#3c433d", bg = "#424842" })
        vim.api.nvim_set_hl(0, "PokePixel_21_101", { fg = "#3c433d", bg = "#1d201d" })
        vim.api.nvim_set_hl(0, "PokePixel_21_104", { fg = "#252425", bg = "#cc3b11" })
        vim.api.nvim_set_hl(0, "PokePixel_21_107", { fg = "#252425", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_21_110", { fg = "#cc3a13", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_21_113", { fg = "#cc3a13", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_21_116", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_21_119", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_22_2", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_22_5", { fg = "#de5765", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_22_8", { fg = "#3b423b", bg = "#3c413d" })
        vim.api.nvim_set_hl(0, "PokePixel_22_11", { fg = "#3b423b", bg = "#343734" })
        vim.api.nvim_set_hl(0, "PokePixel_22_14", { fg = "#242524", bg = "#5b655f" })
        vim.api.nvim_set_hl(0, "PokePixel_22_17", { fg = "#5a655e", bg = "#5b655f" })
        vim.api.nvim_set_hl(0, "PokePixel_22_20", { fg = "#5b675e", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_22_23", { fg = "#212220", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_22_26", { fg = "#f1b81d", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_22_29", { fg = "#353c28", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_22_32", { fg = "#3b423b", bg = "#5d6660" })
        vim.api.nvim_set_hl(0, "PokePixel_22_35", { fg = "#3b423b", bg = "#5d6660" })
        vim.api.nvim_set_hl(0, "PokePixel_22_38", { fg = "#3a433d", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_22_41", { fg = "#4d5447", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_22_44", { fg = "#4d5447", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_22_47", { fg = "#3a433d", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_22_50", { fg = "#3b423b", bg = "#5d6660" })
        vim.api.nvim_set_hl(0, "PokePixel_22_53", { fg = "#3b423b", bg = "#5d6660" })
        vim.api.nvim_set_hl(0, "PokePixel_22_56", { fg = "#3e453e", bg = "#5e6863" })
        vim.api.nvim_set_hl(0, "PokePixel_22_59", { fg = "#f2b012", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_22_62", { fg = "#343734", bg = "#5b655f" })
        vim.api.nvim_set_hl(0, "PokePixel_22_65", { fg = "#606b63", bg = "#5b655f" })
        vim.api.nvim_set_hl(0, "PokePixel_22_68", { fg = "#606b63", bg = "#5d6660" })
        vim.api.nvim_set_hl(0, "PokePixel_22_71", { fg = "#343734", bg = "#5d6660" })
        vim.api.nvim_set_hl(0, "PokePixel_22_74", { fg = "#3b423b", bg = "#242524" })
        vim.api.nvim_set_hl(0, "PokePixel_22_77", { fg = "#3b423b", bg = "#3d423f" })
        vim.api.nvim_set_hl(0, "PokePixel_22_80", { fg = "#de5765", bg = "#3b423b" })
        vim.api.nvim_set_hl(0, "PokePixel_22_83", { fg = "#000000", bg = "#de5765" })
        vim.api.nvim_set_hl(0, "PokePixel_22_86", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_22_92", { fg = "#010505" })
        vim.api.nvim_set_hl(0, "PokePixel_22_95", { fg = "#000000", bg = "#f54743" })
        vim.api.nvim_set_hl(0, "PokePixel_22_98", { fg = "#f63d39", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_22_101", { fg = "#2d332f", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_22_104", { fg = "#252425", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_22_107", { fg = "#000000", bg = "#3c433d" })
        vim.api.nvim_set_hl(0, "PokePixel_22_110", { fg = "#424842", bg = "#252425" })
        vim.api.nvim_set_hl(0, "PokePixel_22_113", { fg = "#1d201d", bg = "#cc3a13" })
        vim.api.nvim_set_hl(0, "PokePixel_22_116", { fg = "#000000", bg = "#cc3b11" })
        vim.api.nvim_set_hl(0, "PokePixel_22_119", { fg = "#000000", bg = "#cc3b11" })
        vim.api.nvim_set_hl(0, "PokePixel_22_122", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_23_3", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_23_6", { fg = "#000000", bg = "#de5765" })
        vim.api.nvim_set_hl(0, "PokePixel_23_9", { fg = "#de5765", bg = "#3b423b" })
        vim.api.nvim_set_hl(0, "PokePixel_23_12", { fg = "#3c433d", bg = "#3d423f" })
        vim.api.nvim_set_hl(0, "PokePixel_23_15", { fg = "#3c433d", bg = "#242524" })
        vim.api.nvim_set_hl(0, "PokePixel_23_18", { fg = "#000000", bg = "#3e433f" })
        vim.api.nvim_set_hl(0, "PokePixel_23_21", { fg = "#000000", bg = "#3e433f" })
        vim.api.nvim_set_hl(0, "PokePixel_23_24", { fg = "#000000", bg = "#232725" })
        vim.api.nvim_set_hl(0, "PokePixel_23_27", { fg = "#000000", bg = "#f1b81d" })
        vim.api.nvim_set_hl(0, "PokePixel_23_30", { fg = "#3c433d", bg = "#ffce47" })
        vim.api.nvim_set_hl(0, "PokePixel_23_33", { fg = "#3c433d", bg = "#ffce47" })
        vim.api.nvim_set_hl(0, "PokePixel_23_36", { fg = "#a17f22", bg = "#ffd563" })
        vim.api.nvim_set_hl(0, "PokePixel_23_39", { fg = "#ffe191", bg = "#3a433d" })
        vim.api.nvim_set_hl(0, "PokePixel_23_42", { fg = "#ffe191", bg = "#3a433d" })
        vim.api.nvim_set_hl(0, "PokePixel_23_45", { fg = "#a17f22", bg = "#ffd563" })
        vim.api.nvim_set_hl(0, "PokePixel_23_48", { fg = "#3c433d", bg = "#ffce47" })
        vim.api.nvim_set_hl(0, "PokePixel_23_51", { fg = "#3c433d", bg = "#ffce47" })
        vim.api.nvim_set_hl(0, "PokePixel_23_54", { fg = "#000000", bg = "#f2b012" })
        vim.api.nvim_set_hl(0, "PokePixel_23_57", { fg = "#000000", bg = "#3e453e" })
        vim.api.nvim_set_hl(0, "PokePixel_23_60", { fg = "#000000", bg = "#3c413d" })
        vim.api.nvim_set_hl(0, "PokePixel_23_63", { fg = "#080000" })
        vim.api.nvim_set_hl(0, "PokePixel_23_66", { fg = "#080000" })
        vim.api.nvim_set_hl(0, "PokePixel_23_69", { fg = "#000000", bg = "#3c413d" })
        vim.api.nvim_set_hl(0, "PokePixel_23_72", { fg = "#000000", bg = "#3b423b" })
        vim.api.nvim_set_hl(0, "PokePixel_23_75", { fg = "#000000", bg = "#de5765" })
        vim.api.nvim_set_hl(0, "PokePixel_23_78", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_23_87", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_23_90", { fg = "#000000", bg = "#f63d39" })
        vim.api.nvim_set_hl(0, "PokePixel_23_93", { fg = "#000000", bg = "#2d332f" })
        vim.api.nvim_set_hl(0, "PokePixel_23_96", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_23_100", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_23_103", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_24_5", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_24_8", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_24_11", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_24_18", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_24_21", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_24_24", { fg = "#020403" })
        vim.api.nvim_set_hl(0, "PokePixel_24_27", { fg = "#020403" })
        vim.api.nvim_set_hl(0, "PokePixel_24_30", { fg = "#020403" })
        vim.api.nvim_set_hl(0, "PokePixel_24_33", { fg = "#020403" })
        vim.api.nvim_set_hl(0, "PokePixel_24_36", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_24_39", { fg = "#000000" })
      end

      local hl = {
        { { "PokePixel_0_21", 21, 24 }, { "PokePixel_0_24", 24, 27 }, { "PokePixel_0_27", 27, 30 } },
        {
          { "PokePixel_1_0", 0, 3 },
          { "PokePixel_1_3", 3, 6 },
          { "PokePixel_1_6", 6, 9 },
          { "PokePixel_1_26", 26, 29 },
          { "PokePixel_1_29", 29, 32 },
          { "PokePixel_1_32", 32, 35 },
          { "PokePixel_1_35", 35, 38 },
        },
        {
          { "PokePixel_2_0", 0, 3 },
          { "PokePixel_2_3", 3, 6 },
          { "PokePixel_2_6", 6, 9 },
          { "PokePixel_2_9", 9, 12 },
          { "PokePixel_2_12", 12, 15 },
          { "PokePixel_2_28", 28, 31 },
          { "PokePixel_2_31", 31, 34 },
          { "PokePixel_2_34", 34, 37 },
          { "PokePixel_2_37", 37, 40 },
          { "PokePixel_2_40", 40, 43 },
        },
        {
          { "PokePixel_3_1", 1, 4 },
          { "PokePixel_3_4", 4, 7 },
          { "PokePixel_3_7", 7, 10 },
          { "PokePixel_3_10", 10, 13 },
          { "PokePixel_3_13", 13, 16 },
          { "PokePixel_3_27", 27, 30 },
          { "PokePixel_3_30", 30, 33 },
          { "PokePixel_3_33", 33, 36 },
          { "PokePixel_3_36", 36, 39 },
          { "PokePixel_3_39", 39, 42 },
          { "PokePixel_3_42", 42, 45 },
        },
        {
          { "PokePixel_4_2", 2, 5 },
          { "PokePixel_4_5", 5, 8 },
          { "PokePixel_4_8", 8, 11 },
          { "PokePixel_4_11", 11, 14 },
          { "PokePixel_4_24", 24, 27 },
          { "PokePixel_4_27", 27, 30 },
          { "PokePixel_4_30", 30, 33 },
          { "PokePixel_4_33", 33, 36 },
        },
        {
          { "PokePixel_5_3", 3, 6 },
          { "PokePixel_5_6", 6, 9 },
          { "PokePixel_5_9", 9, 12 },
          { "PokePixel_5_12", 12, 15 },
          { "PokePixel_5_22", 22, 25 },
          { "PokePixel_5_25", 25, 28 },
          { "PokePixel_5_28", 28, 31 },
          { "PokePixel_5_31", 31, 34 },
          { "PokePixel_5_34", 34, 37 },
        },
        {
          { "PokePixel_6_4", 4, 7 },
          { "PokePixel_6_7", 7, 10 },
          { "PokePixel_6_10", 10, 13 },
          { "PokePixel_6_13", 13, 16 },
          { "PokePixel_6_16", 16, 19 },
          { "PokePixel_6_19", 19, 22 },
          { "PokePixel_6_22", 22, 25 },
          { "PokePixel_6_25", 25, 28 },
          { "PokePixel_6_28", 28, 31 },
          { "PokePixel_6_31", 31, 34 },
          { "PokePixel_6_34", 34, 37 },
          { "PokePixel_6_37", 37, 40 },
          { "PokePixel_6_40", 40, 43 },
          { "PokePixel_6_43", 43, 46 },
        },
        {
          { "PokePixel_7_2", 2, 5 },
          { "PokePixel_7_5", 5, 8 },
          { "PokePixel_7_8", 8, 11 },
          { "PokePixel_7_11", 11, 14 },
          { "PokePixel_7_14", 14, 17 },
          { "PokePixel_7_17", 17, 20 },
          { "PokePixel_7_20", 20, 23 },
          { "PokePixel_7_23", 23, 26 },
          { "PokePixel_7_26", 26, 29 },
          { "PokePixel_7_29", 29, 32 },
          { "PokePixel_7_32", 32, 35 },
          { "PokePixel_7_35", 35, 38 },
          { "PokePixel_7_38", 38, 41 },
          { "PokePixel_7_41", 41, 44 },
          { "PokePixel_7_44", 44, 47 },
          { "PokePixel_7_47", 47, 50 },
          { "PokePixel_7_50", 50, 53 },
          { "PokePixel_7_53", 53, 56 },
          { "PokePixel_7_56", 56, 59 },
          { "PokePixel_7_59", 59, 62 },
          { "PokePixel_7_62", 62, 65 },
        },
        {
          { "PokePixel_8_1", 1, 4 },
          { "PokePixel_8_4", 4, 7 },
          { "PokePixel_8_7", 7, 10 },
          { "PokePixel_8_10", 10, 13 },
          { "PokePixel_8_13", 13, 16 },
          { "PokePixel_8_16", 16, 19 },
          { "PokePixel_8_19", 19, 22 },
          { "PokePixel_8_22", 22, 25 },
          { "PokePixel_8_25", 25, 28 },
          { "PokePixel_8_28", 28, 31 },
          { "PokePixel_8_31", 31, 34 },
          { "PokePixel_8_34", 34, 37 },
          { "PokePixel_8_37", 37, 40 },
          { "PokePixel_8_40", 40, 43 },
          { "PokePixel_8_43", 43, 46 },
          { "PokePixel_8_46", 46, 49 },
          { "PokePixel_8_49", 49, 52 },
          { "PokePixel_8_52", 52, 55 },
          { "PokePixel_8_55", 55, 58 },
          { "PokePixel_8_58", 58, 61 },
          { "PokePixel_8_61", 61, 64 },
          { "PokePixel_8_64", 64, 67 },
          { "PokePixel_8_67", 67, 70 },
          { "PokePixel_8_70", 70, 73 },
          { "PokePixel_8_73", 73, 76 },
        },
        {
          { "PokePixel_9_1", 1, 4 },
          { "PokePixel_9_4", 4, 7 },
          { "PokePixel_9_7", 7, 10 },
          { "PokePixel_9_10", 10, 13 },
          { "PokePixel_9_13", 13, 16 },
          { "PokePixel_9_16", 16, 19 },
          { "PokePixel_9_19", 19, 22 },
          { "PokePixel_9_22", 22, 25 },
          { "PokePixel_9_25", 25, 28 },
          { "PokePixel_9_28", 28, 31 },
          { "PokePixel_9_31", 31, 34 },
          { "PokePixel_9_34", 34, 37 },
          { "PokePixel_9_37", 37, 40 },
          { "PokePixel_9_40", 40, 43 },
          { "PokePixel_9_43", 43, 46 },
          { "PokePixel_9_46", 46, 49 },
          { "PokePixel_9_49", 49, 52 },
          { "PokePixel_9_52", 52, 55 },
          { "PokePixel_9_55", 55, 58 },
          { "PokePixel_9_58", 58, 61 },
          { "PokePixel_9_61", 61, 64 },
          { "PokePixel_9_64", 64, 67 },
          { "PokePixel_9_67", 67, 70 },
          { "PokePixel_9_70", 70, 73 },
          { "PokePixel_9_73", 73, 76 },
          { "PokePixel_9_76", 76, 79 },
          { "PokePixel_9_79", 79, 82 },
          { "PokePixel_9_82", 82, 85 },
          { "PokePixel_9_85", 85, 88 },
          { "PokePixel_9_88", 88, 91 },
          { "PokePixel_9_91", 91, 94 },
          { "PokePixel_9_94", 94, 97 },
          { "PokePixel_9_97", 97, 100 },
        },
        {
          { "PokePixel_10_1", 1, 4 },
          { "PokePixel_10_4", 4, 7 },
          { "PokePixel_10_7", 7, 10 },
          { "PokePixel_10_10", 10, 13 },
          { "PokePixel_10_13", 13, 16 },
          { "PokePixel_10_16", 16, 19 },
          { "PokePixel_10_19", 19, 22 },
          { "PokePixel_10_22", 22, 25 },
          { "PokePixel_10_25", 25, 28 },
          { "PokePixel_10_28", 28, 31 },
          { "PokePixel_10_31", 31, 34 },
          { "PokePixel_10_34", 34, 37 },
          { "PokePixel_10_37", 37, 40 },
          { "PokePixel_10_40", 40, 43 },
          { "PokePixel_10_43", 43, 46 },
          { "PokePixel_10_46", 46, 49 },
          { "PokePixel_10_49", 49, 52 },
          { "PokePixel_10_53", 53, 56 },
          { "PokePixel_10_56", 56, 59 },
          { "PokePixel_10_59", 59, 62 },
          { "PokePixel_10_62", 62, 65 },
          { "PokePixel_10_65", 65, 68 },
          { "PokePixel_10_68", 68, 71 },
          { "PokePixel_10_71", 71, 74 },
          { "PokePixel_10_74", 74, 77 },
          { "PokePixel_10_77", 77, 80 },
          { "PokePixel_10_80", 80, 83 },
          { "PokePixel_10_83", 83, 86 },
          { "PokePixel_10_86", 86, 89 },
          { "PokePixel_10_89", 89, 92 },
          { "PokePixel_10_92", 92, 95 },
          { "PokePixel_10_95", 95, 98 },
          { "PokePixel_10_98", 98, 101 },
        },
        {
          { "PokePixel_11_0", 0, 3 },
          { "PokePixel_11_3", 3, 6 },
          { "PokePixel_11_6", 6, 9 },
          { "PokePixel_11_9", 9, 12 },
          { "PokePixel_11_12", 12, 15 },
          { "PokePixel_11_15", 15, 18 },
          { "PokePixel_11_18", 18, 21 },
          { "PokePixel_11_21", 21, 24 },
          { "PokePixel_11_24", 24, 27 },
          { "PokePixel_11_27", 27, 30 },
          { "PokePixel_11_30", 30, 33 },
          { "PokePixel_11_33", 33, 36 },
          { "PokePixel_11_36", 36, 39 },
          { "PokePixel_11_39", 39, 42 },
          { "PokePixel_11_42", 42, 45 },
          { "PokePixel_11_45", 45, 48 },
          { "PokePixel_11_48", 48, 51 },
          { "PokePixel_11_51", 51, 54 },
          { "PokePixel_11_54", 54, 57 },
          { "PokePixel_11_57", 57, 60 },
          { "PokePixel_11_61", 61, 64 },
          { "PokePixel_11_64", 64, 67 },
          { "PokePixel_11_67", 67, 70 },
          { "PokePixel_11_70", 70, 73 },
          { "PokePixel_11_73", 73, 76 },
          { "PokePixel_11_76", 76, 79 },
          { "PokePixel_11_79", 79, 82 },
          { "PokePixel_11_82", 82, 85 },
          { "PokePixel_11_85", 85, 88 },
          { "PokePixel_11_88", 88, 91 },
          { "PokePixel_11_91", 91, 94 },
          { "PokePixel_11_94", 94, 97 },
          { "PokePixel_11_97", 97, 100 },
          { "PokePixel_11_100", 100, 103 },
          { "PokePixel_11_103", 103, 106 },
        },
        {
          { "PokePixel_12_0", 0, 3 },
          { "PokePixel_12_3", 3, 6 },
          { "PokePixel_12_6", 6, 9 },
          { "PokePixel_12_9", 9, 12 },
          { "PokePixel_12_12", 12, 15 },
          { "PokePixel_12_15", 15, 18 },
          { "PokePixel_12_18", 18, 21 },
          { "PokePixel_12_21", 21, 24 },
          { "PokePixel_12_24", 24, 27 },
          { "PokePixel_12_27", 27, 30 },
          { "PokePixel_12_30", 30, 33 },
          { "PokePixel_12_33", 33, 36 },
          { "PokePixel_12_36", 36, 39 },
          { "PokePixel_12_42", 42, 45 },
          { "PokePixel_12_45", 45, 48 },
          { "PokePixel_12_48", 48, 51 },
          { "PokePixel_12_51", 51, 54 },
          { "PokePixel_12_54", 54, 57 },
          { "PokePixel_12_57", 57, 60 },
          { "PokePixel_12_60", 60, 63 },
          { "PokePixel_12_63", 63, 66 },
          { "PokePixel_12_66", 66, 69 },
          { "PokePixel_12_69", 69, 72 },
          { "PokePixel_12_72", 72, 75 },
          { "PokePixel_12_75", 75, 78 },
          { "PokePixel_12_78", 78, 81 },
          { "PokePixel_12_81", 81, 84 },
          { "PokePixel_12_84", 84, 87 },
          { "PokePixel_12_87", 87, 90 },
          { "PokePixel_12_90", 90, 93 },
          { "PokePixel_12_93", 93, 96 },
          { "PokePixel_12_96", 96, 99 },
          { "PokePixel_12_99", 99, 102 },
        },
        {
          { "PokePixel_13_1", 1, 4 },
          { "PokePixel_13_4", 4, 7 },
          { "PokePixel_13_7", 7, 10 },
          { "PokePixel_13_11", 11, 14 },
          { "PokePixel_13_14", 14, 17 },
          { "PokePixel_13_17", 17, 20 },
          { "PokePixel_13_20", 20, 23 },
          { "PokePixel_13_23", 23, 26 },
          { "PokePixel_13_26", 26, 29 },
          { "PokePixel_13_29", 29, 32 },
          { "PokePixel_13_33", 33, 36 },
          { "PokePixel_13_36", 36, 39 },
          { "PokePixel_13_39", 39, 42 },
          { "PokePixel_13_42", 42, 45 },
          { "PokePixel_13_47", 47, 50 },
          { "PokePixel_13_50", 50, 53 },
          { "PokePixel_13_53", 53, 56 },
          { "PokePixel_13_56", 56, 59 },
          { "PokePixel_13_59", 59, 62 },
          { "PokePixel_13_62", 62, 65 },
          { "PokePixel_13_65", 65, 68 },
          { "PokePixel_13_68", 68, 71 },
          { "PokePixel_13_71", 71, 74 },
          { "PokePixel_13_74", 74, 77 },
          { "PokePixel_13_77", 77, 80 },
          { "PokePixel_13_80", 80, 83 },
          { "PokePixel_13_83", 83, 86 },
          { "PokePixel_13_86", 86, 89 },
          { "PokePixel_13_89", 89, 92 },
          { "PokePixel_13_92", 92, 95 },
        },
        {
          { "PokePixel_14_6", 6, 9 },
          { "PokePixel_14_9", 9, 12 },
          { "PokePixel_14_12", 12, 15 },
          { "PokePixel_14_15", 15, 18 },
          { "PokePixel_14_20", 20, 23 },
          { "PokePixel_14_23", 23, 26 },
          { "PokePixel_14_26", 26, 29 },
          { "PokePixel_14_29", 29, 32 },
          { "PokePixel_14_32", 32, 35 },
          { "PokePixel_14_35", 35, 38 },
          { "PokePixel_14_38", 38, 41 },
          { "PokePixel_14_41", 41, 44 },
          { "PokePixel_14_44", 44, 47 },
          { "PokePixel_14_47", 47, 50 },
          { "PokePixel_14_52", 52, 55 },
          { "PokePixel_14_55", 55, 58 },
          { "PokePixel_14_58", 58, 61 },
          { "PokePixel_14_61", 61, 64 },
          { "PokePixel_14_64", 64, 67 },
          { "PokePixel_14_67", 67, 70 },
          { "PokePixel_14_70", 70, 73 },
          { "PokePixel_14_73", 73, 76 },
          { "PokePixel_14_76", 76, 79 },
          { "PokePixel_14_79", 79, 82 },
        },
        {
          { "PokePixel_15_12", 12, 15 },
          { "PokePixel_15_15", 15, 18 },
          { "PokePixel_15_18", 18, 21 },
          { "PokePixel_15_21", 21, 24 },
          { "PokePixel_15_24", 24, 27 },
          { "PokePixel_15_27", 27, 30 },
          { "PokePixel_15_30", 30, 33 },
          { "PokePixel_15_33", 33, 36 },
          { "PokePixel_15_41", 41, 44 },
          { "PokePixel_15_44", 44, 47 },
          { "PokePixel_15_47", 47, 50 },
          { "PokePixel_15_50", 50, 53 },
          { "PokePixel_15_53", 53, 56 },
          { "PokePixel_15_56", 56, 59 },
          { "PokePixel_15_59", 59, 62 },
          { "PokePixel_15_62", 62, 65 },
          { "PokePixel_15_65", 65, 68 },
        },
        {
          { "PokePixel_16_15", 15, 18 },
          { "PokePixel_16_18", 18, 21 },
          { "PokePixel_16_21", 21, 24 },
          { "PokePixel_16_24", 24, 27 },
          { "PokePixel_16_27", 27, 30 },
          { "PokePixel_16_35", 35, 38 },
          { "PokePixel_16_38", 38, 41 },
          { "PokePixel_16_41", 41, 44 },
          { "PokePixel_16_44", 44, 47 },
          { "PokePixel_16_47", 47, 50 },
          { "PokePixel_16_50", 50, 53 },
          { "PokePixel_16_53", 53, 56 },
          { "PokePixel_16_56", 56, 59 },
        },
        {
          { "PokePixel_17_12", 12, 15 },
          { "PokePixel_17_15", 15, 18 },
          { "PokePixel_17_18", 18, 21 },
          { "PokePixel_17_21", 21, 24 },
          { "PokePixel_17_24", 24, 27 },
          { "PokePixel_17_27", 27, 30 },
          { "PokePixel_17_30", 30, 33 },
          { "PokePixel_17_33", 33, 36 },
          { "PokePixel_17_36", 36, 39 },
          { "PokePixel_17_39", 39, 42 },
          { "PokePixel_17_42", 42, 45 },
          { "PokePixel_17_48", 48, 51 },
          { "PokePixel_17_51", 51, 54 },
          { "PokePixel_17_54", 54, 57 },
          { "PokePixel_17_57", 57, 60 },
          { "PokePixel_17_60", 60, 63 },
          { "PokePixel_17_63", 63, 66 },
          { "PokePixel_17_66", 66, 69 },
        },
        {
          { "PokePixel_18_7", 7, 10 },
          { "PokePixel_18_10", 10, 13 },
          { "PokePixel_18_13", 13, 16 },
          { "PokePixel_18_16", 16, 19 },
          { "PokePixel_18_19", 19, 22 },
          { "PokePixel_18_22", 22, 25 },
          { "PokePixel_18_25", 25, 28 },
          { "PokePixel_18_28", 28, 31 },
          { "PokePixel_18_31", 31, 34 },
          { "PokePixel_18_34", 34, 37 },
          { "PokePixel_18_37", 37, 40 },
          { "PokePixel_18_40", 40, 43 },
          { "PokePixel_18_43", 43, 46 },
          { "PokePixel_18_46", 46, 49 },
          { "PokePixel_18_49", 49, 52 },
          { "PokePixel_18_52", 52, 55 },
          { "PokePixel_18_55", 55, 58 },
          { "PokePixel_18_58", 58, 61 },
          { "PokePixel_18_61", 61, 64 },
          { "PokePixel_18_64", 64, 67 },
          { "PokePixel_18_67", 67, 70 },
          { "PokePixel_18_70", 70, 73 },
          { "PokePixel_18_73", 73, 76 },
          { "PokePixel_18_76", 76, 79 },
          { "PokePixel_18_79", 79, 82 },
          { "PokePixel_18_82", 82, 85 },
        },
        {
          { "PokePixel_19_3", 3, 6 },
          { "PokePixel_19_6", 6, 9 },
          { "PokePixel_19_10", 10, 13 },
          { "PokePixel_19_13", 13, 16 },
          { "PokePixel_19_16", 16, 19 },
          { "PokePixel_19_19", 19, 22 },
          { "PokePixel_19_22", 22, 25 },
          { "PokePixel_19_25", 25, 28 },
          { "PokePixel_19_28", 28, 31 },
          { "PokePixel_19_31", 31, 34 },
          { "PokePixel_19_34", 34, 37 },
          { "PokePixel_19_37", 37, 40 },
          { "PokePixel_19_40", 40, 43 },
          { "PokePixel_19_43", 43, 46 },
          { "PokePixel_19_46", 46, 49 },
          { "PokePixel_19_49", 49, 52 },
          { "PokePixel_19_52", 52, 55 },
          { "PokePixel_19_55", 55, 58 },
          { "PokePixel_19_58", 58, 61 },
          { "PokePixel_19_61", 61, 64 },
          { "PokePixel_19_64", 64, 67 },
          { "PokePixel_19_67", 67, 70 },
          { "PokePixel_19_70", 70, 73 },
          { "PokePixel_19_73", 73, 76 },
          { "PokePixel_19_76", 76, 79 },
          { "PokePixel_19_79", 79, 82 },
          { "PokePixel_19_82", 82, 85 },
          { "PokePixel_19_85", 85, 88 },
          { "PokePixel_19_88", 88, 91 },
          { "PokePixel_19_91", 91, 94 },
          { "PokePixel_19_94", 94, 97 },
        },
        {
          { "PokePixel_20_3", 3, 6 },
          { "PokePixel_20_6", 6, 9 },
          { "PokePixel_20_9", 9, 12 },
          { "PokePixel_20_12", 12, 15 },
          { "PokePixel_20_15", 15, 18 },
          { "PokePixel_20_18", 18, 21 },
          { "PokePixel_20_21", 21, 24 },
          { "PokePixel_20_24", 24, 27 },
          { "PokePixel_20_27", 27, 30 },
          { "PokePixel_20_30", 30, 33 },
          { "PokePixel_20_33", 33, 36 },
          { "PokePixel_20_36", 36, 39 },
          { "PokePixel_20_39", 39, 42 },
          { "PokePixel_20_42", 42, 45 },
          { "PokePixel_20_45", 45, 48 },
          { "PokePixel_20_48", 48, 51 },
          { "PokePixel_20_51", 51, 54 },
          { "PokePixel_20_54", 54, 57 },
          { "PokePixel_20_57", 57, 60 },
          { "PokePixel_20_60", 60, 63 },
          { "PokePixel_20_63", 63, 66 },
          { "PokePixel_20_66", 66, 69 },
          { "PokePixel_20_69", 69, 72 },
          { "PokePixel_20_72", 72, 75 },
          { "PokePixel_20_75", 75, 78 },
          { "PokePixel_20_78", 78, 81 },
          { "PokePixel_20_81", 81, 84 },
          { "PokePixel_20_84", 84, 87 },
          { "PokePixel_20_87", 87, 90 },
          { "PokePixel_20_90", 90, 93 },
          { "PokePixel_20_93", 93, 96 },
          { "PokePixel_20_96", 96, 99 },
          { "PokePixel_20_99", 99, 102 },
          { "PokePixel_20_102", 102, 105 },
          { "PokePixel_20_105", 105, 108 },
          { "PokePixel_20_108", 108, 111 },
        },
        {
          { "PokePixel_21_4", 4, 7 },
          { "PokePixel_21_7", 7, 10 },
          { "PokePixel_21_10", 10, 13 },
          { "PokePixel_21_13", 13, 16 },
          { "PokePixel_21_16", 16, 19 },
          { "PokePixel_21_19", 19, 22 },
          { "PokePixel_21_22", 22, 25 },
          { "PokePixel_21_25", 25, 28 },
          { "PokePixel_21_28", 28, 31 },
          { "PokePixel_21_31", 31, 34 },
          { "PokePixel_21_34", 34, 37 },
          { "PokePixel_21_37", 37, 40 },
          { "PokePixel_21_40", 40, 43 },
          { "PokePixel_21_43", 43, 46 },
          { "PokePixel_21_46", 46, 49 },
          { "PokePixel_21_49", 49, 52 },
          { "PokePixel_21_52", 52, 55 },
          { "PokePixel_21_55", 55, 58 },
          { "PokePixel_21_58", 58, 61 },
          { "PokePixel_21_61", 61, 64 },
          { "PokePixel_21_64", 64, 67 },
          { "PokePixel_21_67", 67, 70 },
          { "PokePixel_21_70", 70, 73 },
          { "PokePixel_21_73", 73, 76 },
          { "PokePixel_21_76", 76, 79 },
          { "PokePixel_21_79", 79, 82 },
          { "PokePixel_21_82", 82, 85 },
          { "PokePixel_21_86", 86, 89 },
          { "PokePixel_21_89", 89, 92 },
          { "PokePixel_21_92", 92, 95 },
          { "PokePixel_21_95", 95, 98 },
          { "PokePixel_21_98", 98, 101 },
          { "PokePixel_21_101", 101, 104 },
          { "PokePixel_21_104", 104, 107 },
          { "PokePixel_21_107", 107, 110 },
          { "PokePixel_21_110", 110, 113 },
          { "PokePixel_21_113", 113, 116 },
          { "PokePixel_21_116", 116, 119 },
          { "PokePixel_21_119", 119, 122 },
        },
        {
          { "PokePixel_22_2", 2, 5 },
          { "PokePixel_22_5", 5, 8 },
          { "PokePixel_22_8", 8, 11 },
          { "PokePixel_22_11", 11, 14 },
          { "PokePixel_22_14", 14, 17 },
          { "PokePixel_22_17", 17, 20 },
          { "PokePixel_22_20", 20, 23 },
          { "PokePixel_22_23", 23, 26 },
          { "PokePixel_22_26", 26, 29 },
          { "PokePixel_22_29", 29, 32 },
          { "PokePixel_22_32", 32, 35 },
          { "PokePixel_22_35", 35, 38 },
          { "PokePixel_22_38", 38, 41 },
          { "PokePixel_22_41", 41, 44 },
          { "PokePixel_22_44", 44, 47 },
          { "PokePixel_22_47", 47, 50 },
          { "PokePixel_22_50", 50, 53 },
          { "PokePixel_22_53", 53, 56 },
          { "PokePixel_22_56", 56, 59 },
          { "PokePixel_22_59", 59, 62 },
          { "PokePixel_22_62", 62, 65 },
          { "PokePixel_22_65", 65, 68 },
          { "PokePixel_22_68", 68, 71 },
          { "PokePixel_22_71", 71, 74 },
          { "PokePixel_22_74", 74, 77 },
          { "PokePixel_22_77", 77, 80 },
          { "PokePixel_22_80", 80, 83 },
          { "PokePixel_22_83", 83, 86 },
          { "PokePixel_22_86", 86, 89 },
          { "PokePixel_22_92", 92, 95 },
          { "PokePixel_22_95", 95, 98 },
          { "PokePixel_22_98", 98, 101 },
          { "PokePixel_22_101", 101, 104 },
          { "PokePixel_22_104", 104, 107 },
          { "PokePixel_22_107", 107, 110 },
          { "PokePixel_22_110", 110, 113 },
          { "PokePixel_22_113", 113, 116 },
          { "PokePixel_22_116", 116, 119 },
          { "PokePixel_22_119", 119, 122 },
          { "PokePixel_22_122", 122, 125 },
        },
        {
          { "PokePixel_23_3", 3, 6 },
          { "PokePixel_23_6", 6, 9 },
          { "PokePixel_23_9", 9, 12 },
          { "PokePixel_23_12", 12, 15 },
          { "PokePixel_23_15", 15, 18 },
          { "PokePixel_23_18", 18, 21 },
          { "PokePixel_23_21", 21, 24 },
          { "PokePixel_23_24", 24, 27 },
          { "PokePixel_23_27", 27, 30 },
          { "PokePixel_23_30", 30, 33 },
          { "PokePixel_23_33", 33, 36 },
          { "PokePixel_23_36", 36, 39 },
          { "PokePixel_23_39", 39, 42 },
          { "PokePixel_23_42", 42, 45 },
          { "PokePixel_23_45", 45, 48 },
          { "PokePixel_23_48", 48, 51 },
          { "PokePixel_23_51", 51, 54 },
          { "PokePixel_23_54", 54, 57 },
          { "PokePixel_23_57", 57, 60 },
          { "PokePixel_23_60", 60, 63 },
          { "PokePixel_23_63", 63, 66 },
          { "PokePixel_23_66", 66, 69 },
          { "PokePixel_23_69", 69, 72 },
          { "PokePixel_23_72", 72, 75 },
          { "PokePixel_23_75", 75, 78 },
          { "PokePixel_23_78", 78, 81 },
          { "PokePixel_23_87", 87, 90 },
          { "PokePixel_23_90", 90, 93 },
          { "PokePixel_23_93", 93, 96 },
          { "PokePixel_23_96", 96, 99 },
          { "PokePixel_23_100", 100, 103 },
          { "PokePixel_23_103", 103, 106 },
        },
        {
          { "PokePixel_24_5", 5, 8 },
          { "PokePixel_24_8", 8, 11 },
          { "PokePixel_24_11", 11, 14 },
          { "PokePixel_24_18", 18, 21 },
          { "PokePixel_24_21", 21, 24 },
          { "PokePixel_24_24", 24, 27 },
          { "PokePixel_24_27", 27, 30 },
          { "PokePixel_24_30", 30, 33 },
          { "PokePixel_24_33", 33, 36 },
          { "PokePixel_24_36", 36, 39 },
          { "PokePixel_24_39", 39, 42 },
        },
      }

      set_colors()

      opts.section.header.val = sprite
      opts.section.header.opts.hl = hl

      return opts
    end,
  },

  { "max397574/better-escape.nvim", enabled = false },

  {
    "s1n7ax/nvim-window-picker",
    opts = function(_, opts)
      opts.hint = "floating-big-letter"
      return opts
    end,
  },

  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom luasnip configuration such as filetype extend or custom snippets
      local luasnip = require "luasnip"
      luasnip.filetype_extend("javascript", { "javascriptreact" })
    end,
  },

  {
    "windwp/nvim-autopairs",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom autopairs configuration such as custom rules
      local npairs = require "nvim-autopairs"
      local Rule = require "nvim-autopairs.rule"
      local cond = require "nvim-autopairs.conds"
      npairs.add_rules(
        {
          Rule("$", "$", { "tex", "latex" })
            -- don't add a pair if the next character is %
            :with_pair(cond.not_after_regex "%%")
            -- don't add a pair if  the previous character is xxx
            :with_pair(
              cond.not_before_regex("xxx", 3)
            )
            -- don't move right when repeat character
            :with_move(cond.none())
            -- don't delete if the next character is xx
            :with_del(cond.not_after_regex "xx")
            -- disable adding a newline when you press <cr>
            :with_cr(cond.none()),
        },
        -- disable for .vim files, but it work for another filetypes
        Rule("a", "a", "-vim")
      )
    end,
  },
}
