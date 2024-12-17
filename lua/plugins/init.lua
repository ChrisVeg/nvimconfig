return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "goolord/alpha-nvim",
    lazy = false,
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      -- Custom Header
      dashboard.section.header.val = {
        "                            ",
        "     ▄▄         ▄ ▄▄▄▄▄▄▄   ",
        "   ▄▀███▄     ▄██ █████▀    ",
        "   ██▄▀███▄   ███           ",
        "   ███  ▀███▄ ███           ",
        "   ███    ▀██ ███           ",
        "   ███      ▀ ███           ",
        "   ▀██ █████▄▀█▀▄██████▄    ",
        "     ▀ ▀▀▀▀▀▀▀ ▀▀▀▀▀▀▀▀▀▀   ",
        "                            ",
        "     Powered By  eovim    ",
        "                            ",
    }

    -- Move Header Lower
    dashboard.config.layout = {
      { type = "padding", val = 10 }, -- Adjust padding here to move the header down
      dashboard.section.header,
      { type = "padding", val = 2 },  -- Space between header and buttons
      dashboard.section.buttons,
      { type = "padding", val = 1 },
      dashboard.section.footer,
    }

    -- Dashboard Buttons
    dashboard.section.buttons.val = {
      dashboard.button("f", "  Find File", ":Telescope find_files <CR>"),
      dashboard.button("o", "  Recent Files", ":Telescope oldfiles <CR>"),
      dashboard.button("w", "  Find Word", ":Telescope live_grep <CR>"),
      dashboard.button("t", "󱥚  Themes", ":Telescope colorscheme <CR>"),
      dashboard.button("q", "  Quit", ":qa<CR>"),
    }

    -- Footer
    dashboard.section.footer.val = {
      "Loaded " .. require("lazy").stats().loaded .. " plugins ",
    }

    -- Setup Alpha
    alpha.setup(dashboard.config)
  end,
},

  {
  "NvChad/base46",
  lazy = false,
  priority = 1000, -- Load base46 before other plugins
  config = function()
    require("base46").load_all_highlights()
  end,
},

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
