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
      --
      -- local sprite = {
      --   [[                     ▄▄▄                     ]],
      --   [[▄▄▄                 ▄▄▄▄                     ]],
      --   [[▀▄▄▄▄             ▄▄▄▄▄                      ]],
      --   [[ ▀▄▄▄▄           ▄▄▄▄▄▀                      ]],
      --   [[  ▀▄▄▄          ▄▄▄▀                         ]],
      --   [[   ▀▄▄▄       ▄▄▄▄▀                          ]],
      --   [[    ▀▄▄▄▄▄▄▄▄▄▄▄▄▄                           ]],
      --   [[  ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄                      ]],
      --   [[ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄                   ]],
      --   [[ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄           ]],
      --   [[ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄ ▀▀▄▄▄▄▄▄▄▄▄▄▄▄▄▄          ]],
      --   [[▄▄▄▄▄▄▄▄▄▄▄▄▄▄▀▄▄▄▄▄ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄         ]],
      --   [[▄▄▄▄▄▀▄▄▄▄▄▄▀   ▀▀▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄         ]],
      --   [[ ▀▄▀ ▄▄▄▄▄▄▀ ▄▄▄▄  ▀▄▄▄▄▄▄▄▄▄▄▄▄▄▄▀          ]],
      --   [[      ▀▄▄▀  ▄▄▄▄▄▄▄▄▄▀  ▄▄▄▄▄▄▄▄▄▄           ]],
      --   [[            ▀▀▀▄▄▀▀▀     ▄▄▄▄▄▄▄▄▀           ]],
      --   [[               ▄▄▄▄▄     ▀▀▄▄▄▄▄▄            ]],
      --   [[            ▄▄▄▄▄▄▄▄▄▄▄   ▄▄▄▄▄▄▄            ]],
      --   [[       ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▀            ]],
      --   [[   ▄▄ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄          ]],
      --   [[   ▀▄▄▄▄▄▄▄▄▄▄▀▀▀▀▀▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄      ]],
      --   [[    ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄ ▀▀▄▄▄▄▄▄▄▄▄▄ ]],
      --   [[  ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▀   ▀▄▄▄▄▄▄▄▄▄▀]],
      --   [[   ▀▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▀▀▄▄▄▀      ▀▄▄▀ ▀▀   ]],
      --   [[     ▀▀▀    ▀▀▀▀▀▀▀▀                         ]],
      -- }
      --
      local sprite = {
        [[         ▄▄▄▄▄▄▄       ]],
        [[    ▄▄▄▄▄▄▄▄▄▄▀        ]],
        [[ ▄▄▄▄▄▀▀▀▀▀▀           ]],
        [[▄▄▄▀ ▄▄                ]],
        [[▀▄▄▄▄▄▄▄▄▄▄▄▄          ]],
        [[  ▀▀▄▄▄▄▄▄▄▄▄▄▄▄       ]],
        [[   ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ]],
        [[    ▄▄▄▄▄▄▄▄▄▄▄▄▀▀▀▄▄▄ ]],
        [[     ▀▄▄▀▄▄▄▄▄▄▄▀   ▄▄▄]],
        [[        ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▀]],
        [[         ▄▄▄▄▄▄▄▄▄▄▀▀  ]],
        [[          ▀▀  ▄▄▄▄     ]],
        [[               ▀▀      ]],
      }

      local function set_colors()
        vim.api.nvim_set_hl(0, "PokePixel_0_9", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_0_12", { fg = "#5588b6", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_0_15", { fg = "#77aad8", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_0_18", { fg = "#77aad8", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_0_21", { fg = "#77aad8", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_0_24", { fg = "#5588b6", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_0_27", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_1_4", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_1_7", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_1_10", { fg = "#77aad8", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_1_13", { fg = "#77aad8", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_1_16", { fg = "#77aad8", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_1_19", { fg = "#77aad8", bg = "#77aad8" })
        vim.api.nvim_set_hl(0, "PokePixel_1_22", { fg = "#77aad8", bg = "#77aad8" })
        vim.api.nvim_set_hl(0, "PokePixel_1_25", { fg = "#5588b6", bg = "#77aad8" })
        vim.api.nvim_set_hl(0, "PokePixel_1_28", { fg = "#000000", bg = "#77aad8" })
        vim.api.nvim_set_hl(0, "PokePixel_1_31", { fg = "#000000", bg = "#5588b6" })
        vim.api.nvim_set_hl(0, "PokePixel_1_34", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_2_1", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_2_4", { fg = "#414141", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_2_7", { fg = "#5588b6", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_2_10", { fg = "#000000", bg = "#5588b6" })
        vim.api.nvim_set_hl(0, "PokePixel_2_13", { fg = "#000000", bg = "#77aad8" })
        vim.api.nvim_set_hl(0, "PokePixel_2_16", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_2_19", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_2_22", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_2_25", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_2_28", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_2_31", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_3_0", { fg = "#000000", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_3_3", { fg = "#5588b6", bg = "#414141" })
        vim.api.nvim_set_hl(0, "PokePixel_3_6", { fg = "#000000", bg = "#5588b6" })
        vim.api.nvim_set_hl(0, "PokePixel_3_9", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_3_13", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_3_16", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_4_0", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_4_3", { fg = "#000000", bg = "#5588b6" })
        vim.api.nvim_set_hl(0, "PokePixel_4_6", { fg = "#5588b6", bg = "#414141" })
        vim.api.nvim_set_hl(0, "PokePixel_4_9", { fg = "#5588b6", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_4_12", { fg = "#414141", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_4_15", { fg = "#77aad8", bg = "#414141" })
        vim.api.nvim_set_hl(0, "PokePixel_4_18", { fg = "#5588b6", bg = "#77aad8" })
        vim.api.nvim_set_hl(0, "PokePixel_4_21", { fg = "#a5e1ff", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_4_24", { fg = "#a5e1ff", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_4_27", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_4_30", { fg = "#5588b6", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_4_33", { fg = "#a5e1ff", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_4_36", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_5_2", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_5_5", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_5_8", { fg = "#000000", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_5_11", { fg = "#77aad8", bg = "#a5e1ff" })
        vim.api.nvim_set_hl(0, "PokePixel_5_14", { fg = "#a5e1ff", bg = "#a5e1ff" })
        vim.api.nvim_set_hl(0, "PokePixel_5_17", { fg = "#a5e1ff", bg = "#a5e1ff" })
        vim.api.nvim_set_hl(0, "PokePixel_5_20", { fg = "#a5e1ff", bg = "#a5e1ff" })
        vim.api.nvim_set_hl(0, "PokePixel_5_23", { fg = "#5588b6", bg = "#a5e1ff" })
        vim.api.nvim_set_hl(0, "PokePixel_5_26", { fg = "#a5e1ff", bg = "#a5e1ff" })
        vim.api.nvim_set_hl(0, "PokePixel_5_29", { fg = "#a5e1ff", bg = "#77aad8" })
        vim.api.nvim_set_hl(0, "PokePixel_5_32", { fg = "#000000", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_5_35", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_5_38", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_5_41", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_6_3", { fg = "#000000", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_6_6", { fg = "#a5e1ff", bg = "#a5e1ff" })
        vim.api.nvim_set_hl(0, "PokePixel_6_9", { fg = "#a5e1ff", bg = "#77aad8" })
        vim.api.nvim_set_hl(0, "PokePixel_6_12", { fg = "#a5e1ff", bg = "#a5e1ff" })
        vim.api.nvim_set_hl(0, "PokePixel_6_15", { fg = "#a5e1ff", bg = "#a5e1ff" })
        vim.api.nvim_set_hl(0, "PokePixel_6_18", { fg = "#5588b6", bg = "#5588b6" })
        vim.api.nvim_set_hl(0, "PokePixel_6_21", { fg = "#000000", bg = "#ffffff" })
        vim.api.nvim_set_hl(0, "PokePixel_6_24", { fg = "#000000", bg = "#5a7bff" })
        vim.api.nvim_set_hl(0, "PokePixel_6_27", { fg = "#ffffff", bg = "#ffffff" })
        vim.api.nvim_set_hl(0, "PokePixel_6_30", { fg = "#77aad8", bg = "#77aad8" })
        vim.api.nvim_set_hl(0, "PokePixel_6_33", { fg = "#000000", bg = "#414141" })
        vim.api.nvim_set_hl(0, "PokePixel_6_36", { fg = "#000000", bg = "#5588b6" })
        vim.api.nvim_set_hl(0, "PokePixel_6_39", { fg = "#000000", bg = "#5588b6" })
        vim.api.nvim_set_hl(0, "PokePixel_6_42", { fg = "#5588b6", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_6_45", { fg = "#77aad8", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_6_48", { fg = "#77aad8", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_6_51", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_6_54", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_7_4", { fg = "#000000", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_7_7", { fg = "#77aad8", bg = "#a5e1ff" })
        vim.api.nvim_set_hl(0, "PokePixel_7_10", { fg = "#a5e1ff", bg = "#a5e1ff" })
        vim.api.nvim_set_hl(0, "PokePixel_7_13", { fg = "#a5e1ff", bg = "#a5e1ff" })
        vim.api.nvim_set_hl(0, "PokePixel_7_16", { fg = "#a5e1ff", bg = "#a5e1ff" })
        vim.api.nvim_set_hl(0, "PokePixel_7_19", { fg = "#77aad8", bg = "#5a7bff" })
        vim.api.nvim_set_hl(0, "PokePixel_7_22", { fg = "#77aad8", bg = "#ffffff" })
        vim.api.nvim_set_hl(0, "PokePixel_7_25", { fg = "#5588b6", bg = "#77aad8" })
        vim.api.nvim_set_hl(0, "PokePixel_7_28", { fg = "#77aad8", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_7_31", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_7_34", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_7_37", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_7_40", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_7_43", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_7_46", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_7_49", { fg = "#000000", bg = "#77aad8" })
        vim.api.nvim_set_hl(0, "PokePixel_7_52", { fg = "#77aad8", bg = "#414141" })
        vim.api.nvim_set_hl(0, "PokePixel_7_55", { fg = "#000000", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_8_5", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_8_8", { fg = "#000000", bg = "#77aad8" })
        vim.api.nvim_set_hl(0, "PokePixel_8_11", { fg = "#000000", bg = "#77aad8" })
        vim.api.nvim_set_hl(0, "PokePixel_8_14", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_8_17", { fg = "#000000", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_8_20", { fg = "#77aad8", bg = "#414141" })
        vim.api.nvim_set_hl(0, "PokePixel_8_23", { fg = "#a5e1ff", bg = "#77aad8" })
        vim.api.nvim_set_hl(0, "PokePixel_8_26", { fg = "#a5e1ff", bg = "#77aad8" })
        vim.api.nvim_set_hl(0, "PokePixel_8_29", { fg = "#77aad8", bg = "#a5e1ff" })
        vim.api.nvim_set_hl(0, "PokePixel_8_32", { fg = "#414141", bg = "#a5e1ff" })
        vim.api.nvim_set_hl(0, "PokePixel_8_35", { fg = "#000000", bg = "#77aad8" })
        vim.api.nvim_set_hl(0, "PokePixel_8_38", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_8_44", { fg = "#000000", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_8_47", { fg = "#77aad8", bg = "#77aad8" })
        vim.api.nvim_set_hl(0, "PokePixel_8_50", { fg = "#000000", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_9_8", { fg = "#000000", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_9_11", { fg = "#77aad8", bg = "#77aad8" })
        vim.api.nvim_set_hl(0, "PokePixel_9_14", { fg = "#414141", bg = "#414141" })
        vim.api.nvim_set_hl(0, "PokePixel_9_17", { fg = "#a5e1ff", bg = "#a5e1ff" })
        vim.api.nvim_set_hl(0, "PokePixel_9_20", { fg = "#5588b6", bg = "#5588b6" })
        vim.api.nvim_set_hl(0, "PokePixel_9_23", { fg = "#a5e1ff", bg = "#a5e1ff" })
        vim.api.nvim_set_hl(0, "PokePixel_9_26", { fg = "#a5e1ff", bg = "#a5e1ff" })
        vim.api.nvim_set_hl(0, "PokePixel_9_29", { fg = "#a5e1ff", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_9_32", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_9_35", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_9_38", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_9_41", { fg = "#77aad8", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_9_44", { fg = "#414141", bg = "#77aad8" })
        vim.api.nvim_set_hl(0, "PokePixel_9_47", { fg = "#000000", bg = "#414141" })
        vim.api.nvim_set_hl(0, "PokePixel_9_50", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_10_9", { fg = "#000000", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_10_12", { fg = "#5588b6", bg = "#414141" })
        vim.api.nvim_set_hl(0, "PokePixel_10_15", { fg = "#414141", bg = "#414141" })
        vim.api.nvim_set_hl(0, "PokePixel_10_18", { fg = "#000000", bg = "#77aad8" })
        vim.api.nvim_set_hl(0, "PokePixel_10_21", { fg = "#000000", bg = "#5588b6" })
        vim.api.nvim_set_hl(0, "PokePixel_10_24", { fg = "#414141", bg = "#a5e1ff" })
        vim.api.nvim_set_hl(0, "PokePixel_10_27", { fg = "#5588b6", bg = "#77aad8" })
        vim.api.nvim_set_hl(0, "PokePixel_10_30", { fg = "#77aad8", bg = "#414141" })
        vim.api.nvim_set_hl(0, "PokePixel_10_33", { fg = "#000000", bg = "#5588b6" })
        vim.api.nvim_set_hl(0, "PokePixel_10_36", { fg = "#000000", bg = "#5588b6" })
        vim.api.nvim_set_hl(0, "PokePixel_10_39", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_10_42", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_11_10", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_11_13", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_11_18", { fg = "#000000", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_11_21", { fg = "#5588b6", bg = "#77aad8" })
        vim.api.nvim_set_hl(0, "PokePixel_11_24", { fg = "#a5e1ff", bg = "#77aad8" })
        vim.api.nvim_set_hl(0, "PokePixel_11_27", { fg = "#000000", bg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_12_15", { fg = "#000000" })
        vim.api.nvim_set_hl(0, "PokePixel_12_18", { fg = "#000000" })
      end

      local hl = {
        {
          { "PokePixel_0_9", 9, 12 },
          { "PokePixel_0_12", 12, 15 },
          { "PokePixel_0_15", 15, 18 },
          { "PokePixel_0_18", 18, 21 },
          { "PokePixel_0_21", 21, 24 },
          { "PokePixel_0_24", 24, 27 },
          { "PokePixel_0_27", 27, 30 },
        },
        {
          { "PokePixel_1_4", 4, 7 },
          { "PokePixel_1_7", 7, 10 },
          { "PokePixel_1_10", 10, 13 },
          { "PokePixel_1_13", 13, 16 },
          { "PokePixel_1_16", 16, 19 },
          { "PokePixel_1_19", 19, 22 },
          { "PokePixel_1_22", 22, 25 },
          { "PokePixel_1_25", 25, 28 },
          { "PokePixel_1_28", 28, 31 },
          { "PokePixel_1_31", 31, 34 },
          { "PokePixel_1_34", 34, 37 },
        },
        {
          { "PokePixel_2_1", 1, 4 },
          { "PokePixel_2_4", 4, 7 },
          { "PokePixel_2_7", 7, 10 },
          { "PokePixel_2_10", 10, 13 },
          { "PokePixel_2_13", 13, 16 },
          { "PokePixel_2_16", 16, 19 },
          { "PokePixel_2_19", 19, 22 },
          { "PokePixel_2_22", 22, 25 },
          { "PokePixel_2_25", 25, 28 },
          { "PokePixel_2_28", 28, 31 },
          { "PokePixel_2_31", 31, 34 },
        },
        {
          { "PokePixel_3_0", 0, 3 },
          { "PokePixel_3_3", 3, 6 },
          { "PokePixel_3_6", 6, 9 },
          { "PokePixel_3_9", 9, 12 },
          { "PokePixel_3_13", 13, 16 },
          { "PokePixel_3_16", 16, 19 },
        },
        {
          { "PokePixel_4_0", 0, 3 },
          { "PokePixel_4_3", 3, 6 },
          { "PokePixel_4_6", 6, 9 },
          { "PokePixel_4_9", 9, 12 },
          { "PokePixel_4_12", 12, 15 },
          { "PokePixel_4_15", 15, 18 },
          { "PokePixel_4_18", 18, 21 },
          { "PokePixel_4_21", 21, 24 },
          { "PokePixel_4_24", 24, 27 },
          { "PokePixel_4_27", 27, 30 },
          { "PokePixel_4_30", 30, 33 },
          { "PokePixel_4_33", 33, 36 },
          { "PokePixel_4_36", 36, 39 },
        },
        {
          { "PokePixel_5_2", 2, 5 },
          { "PokePixel_5_5", 5, 8 },
          { "PokePixel_5_8", 8, 11 },
          { "PokePixel_5_11", 11, 14 },
          { "PokePixel_5_14", 14, 17 },
          { "PokePixel_5_17", 17, 20 },
          { "PokePixel_5_20", 20, 23 },
          { "PokePixel_5_23", 23, 26 },
          { "PokePixel_5_26", 26, 29 },
          { "PokePixel_5_29", 29, 32 },
          { "PokePixel_5_32", 32, 35 },
          { "PokePixel_5_35", 35, 38 },
          { "PokePixel_5_38", 38, 41 },
          { "PokePixel_5_41", 41, 44 },
        },
        {
          { "PokePixel_6_3", 3, 6 },
          { "PokePixel_6_6", 6, 9 },
          { "PokePixel_6_9", 9, 12 },
          { "PokePixel_6_12", 12, 15 },
          { "PokePixel_6_15", 15, 18 },
          { "PokePixel_6_18", 18, 21 },
          { "PokePixel_6_21", 21, 24 },
          { "PokePixel_6_24", 24, 27 },
          { "PokePixel_6_27", 27, 30 },
          { "PokePixel_6_30", 30, 33 },
          { "PokePixel_6_33", 33, 36 },
          { "PokePixel_6_36", 36, 39 },
          { "PokePixel_6_39", 39, 42 },
          { "PokePixel_6_42", 42, 45 },
          { "PokePixel_6_45", 45, 48 },
          { "PokePixel_6_48", 48, 51 },
          { "PokePixel_6_51", 51, 54 },
          { "PokePixel_6_54", 54, 57 },
        },
        {
          { "PokePixel_7_4", 4, 7 },
          { "PokePixel_7_7", 7, 10 },
          { "PokePixel_7_10", 10, 13 },
          { "PokePixel_7_13", 13, 16 },
          { "PokePixel_7_16", 16, 19 },
          { "PokePixel_7_19", 19, 22 },
          { "PokePixel_7_22", 22, 25 },
          { "PokePixel_7_25", 25, 28 },
          { "PokePixel_7_28", 28, 31 },
          { "PokePixel_7_31", 31, 34 },
          { "PokePixel_7_34", 34, 37 },
          { "PokePixel_7_37", 37, 40 },
          { "PokePixel_7_40", 40, 43 },
          { "PokePixel_7_43", 43, 46 },
          { "PokePixel_7_46", 46, 49 },
          { "PokePixel_7_49", 49, 52 },
          { "PokePixel_7_52", 52, 55 },
          { "PokePixel_7_55", 55, 58 },
        },
        {
          { "PokePixel_8_5", 5, 8 },
          { "PokePixel_8_8", 8, 11 },
          { "PokePixel_8_11", 11, 14 },
          { "PokePixel_8_14", 14, 17 },
          { "PokePixel_8_17", 17, 20 },
          { "PokePixel_8_20", 20, 23 },
          { "PokePixel_8_23", 23, 26 },
          { "PokePixel_8_26", 26, 29 },
          { "PokePixel_8_29", 29, 32 },
          { "PokePixel_8_32", 32, 35 },
          { "PokePixel_8_35", 35, 38 },
          { "PokePixel_8_38", 38, 41 },
          { "PokePixel_8_44", 44, 47 },
          { "PokePixel_8_47", 47, 50 },
          { "PokePixel_8_50", 50, 53 },
        },
        {
          { "PokePixel_9_8", 8, 11 },
          { "PokePixel_9_11", 11, 14 },
          { "PokePixel_9_14", 14, 17 },
          { "PokePixel_9_17", 17, 20 },
          { "PokePixel_9_20", 20, 23 },
          { "PokePixel_9_23", 23, 26 },
          { "PokePixel_9_26", 26, 29 },
          { "PokePixel_9_29", 29, 32 },
          { "PokePixel_9_32", 32, 35 },
          { "PokePixel_9_35", 35, 38 },
          { "PokePixel_9_38", 38, 41 },
          { "PokePixel_9_41", 41, 44 },
          { "PokePixel_9_44", 44, 47 },
          { "PokePixel_9_47", 47, 50 },
          { "PokePixel_9_50", 50, 53 },
        },
        {
          { "PokePixel_10_9", 9, 12 },
          { "PokePixel_10_12", 12, 15 },
          { "PokePixel_10_15", 15, 18 },
          { "PokePixel_10_18", 18, 21 },
          { "PokePixel_10_21", 21, 24 },
          { "PokePixel_10_24", 24, 27 },
          { "PokePixel_10_27", 27, 30 },
          { "PokePixel_10_30", 30, 33 },
          { "PokePixel_10_33", 33, 36 },
          { "PokePixel_10_36", 36, 39 },
          { "PokePixel_10_39", 39, 42 },
          { "PokePixel_10_42", 42, 45 },
        },
        {
          { "PokePixel_11_10", 10, 13 },
          { "PokePixel_11_13", 13, 16 },
          { "PokePixel_11_18", 18, 21 },
          { "PokePixel_11_21", 21, 24 },
          { "PokePixel_11_24", 24, 27 },
          { "PokePixel_11_27", 27, 30 },
        },
        { { "PokePixel_12_15", 15, 18 }, { "PokePixel_12_18", 18, 21 } },
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
