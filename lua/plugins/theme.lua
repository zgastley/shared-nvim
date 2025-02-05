return {

  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      -- transparent = true,
    },
  },
  {
    "AlexvZyl/nordic.nvim",
    config = function()
      require("nordic").setup({
        -- transparent_bg = true, -- Enable transparent background
        -- -- You can include additional configurations here
      })
    end,
  },
  {
    "rebelot/kanagawa.nvim",
  },
  {
    "lfenzo/fusion.nvim",
  },
  {
    "EdenEast/nightfox.nvim",
    config = function()
      require("nightfox").setup({
        options = {
          transparent = true,
          terminal_colors = true,
          dim_inactive = false,
        },
        modules = {
          "lazy.vim",
          "whichkey",
          "treesitter",
          "gitsigns",
          "diagnostic",
          "aerial",
          "barbar",
        },
      })
    end,
  },
  -- {
  --   "zaldih/themery.nvim",
  --   config = function()
  --     require("themery").setup({
  --       -- Optionally, set your configuration here
  --       livePreview = true,
  --       themes = {
  --         "blue",
  --         "carbonfox",
  --         "darkblue",
  --         "dawnfox",
  --         "dayfox",
  --         "default",
  --         "delek",
  --         "desert",
  --         "duskfox",
  --         "elflord",
  --         "evening",
  --         "fusion",
  --         "habamax",
  --         "industry",
  --         "kanagawa",
  --         "kanagawa-dragon",
  --         "kanagawa-lotus",
  --         "kanagawa-wave",
  --         "koehler",
  --         "lunaperche",
  --         "minicyan",
  --         "minischeme",
  --         "morning",
  --         "murphy",
  --         "nightfox",
  --         "nordfox",
  --         "nordic",
  --         "pablo",
  --         "peachpuff",
  --         "quiet",
  --         "randomhue",
  --         "retrobox",
  --         "ron",
  --         "shine",
  --         "slate",
  --         "sorbet",
  --         "terafox",
  --         "torte",
  --         "vim",
  --         "wildcharm",
  --         "zaibatsu",
  --         "zellner",
  --         "tokyonight",
  --       },
  --     })
  --   end,
  -- },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nordfox",
    },
  },
}
