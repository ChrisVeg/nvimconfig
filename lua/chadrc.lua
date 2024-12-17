---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "vim", -- Replace with your desired theme (e.g., "onedark", "gruvbox")
  theme_toggle = { "onedark", "one_light" }, -- Optional for toggling themes
  transparency = true, -- Enable transparency if supported
}
vim.api.nvim_set_hl(0, "IblChar", { fg = "#5C6370" }) -- Set a gray color for indent lines
return M

