return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nordic",
    },
  },
  {
    "AlexvZyl/nordic.nvim",
  },
  {
    "rebelot/kanagawa.nvim",
  },
  {
    "lfenzo/fusion.nvim",
  },
  {
    "EdenEast/nightfox.nvim",
  },

  {
    "zaldih/themery.nvim",
    config = function()
      require("themery").setup({
        -- Optionally, set your configuration here
        livePreview = true,
        themes = {
          "blue",
          "carbonfox",
          "darkblue",
          "dawnfox",
          "dayfox",
          "default",
          "delek",
          "desert",
          "duskfox",
          "elflord",
          "evening",
          "fusion",
          "habamax",
          "industry",
          "kanagawa",
          "kanagawa-dragon",
          "kanagawa-lotus",
          "kanagawa-wave",
          "koehler",
          "lunaperche",
          "minicyan",
          "minischeme",
          "morning",
          "murphy",
          "nightfox",
          "nordfox",
          "nordic",
          "pablo",
          "peachpuff",
          "quiet",
          "randomhue",
          "retrobox",
          "ron",
          "shine",
          "slate",
          "sorbet",
          "terafox",
          "torte",
          "vim",
          "wildcharm",
          "zaibatsu",
          "zellner",
        },
      })
    end,
  },
}
