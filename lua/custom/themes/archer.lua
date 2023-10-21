local M = {}

M.base_30 = {
  white = "#D9D7D6",
  darker_black = "#000a0e",
  black = "#0f0d1b", --  nvim bg
  black2 = "#1b1a3c",
  one_bg = "#131e22",
  one_bg2 = "#1c272b",
  one_bg3 = "#84899f",
  grey = "#d9d7d6",
  grey_fg = "#4d5b60",
  grey_fg2 = "#455054",
  light_grey = "#4f5a5e",
  red = "#DF5B61",
  normal_blue = "#52b0ff",
  pink = "#F16269",
  line = "#84899f", -- for lines like vertsplit
  green = "#78B892",
  vibrant_green = "#8CD7AA",
  nord_blue = "#b1bbf9",
  blue = "#84899f",
  yellow = "#dcdcaa",
  sun = "#f6dc95",
  purple = "#C488EC",
  dark_purple = "#BC83E3",
  teal = "#7ACFE4",
  orange = "#E89982",
  cyan = "#14d7d7",
  statusline_bg = "#1b1a3c",
  lightbg = "#484762",
  pmenu_bg = "#78B892",
  folder_bg = "#6791C9",
}

M.base_16 = {
  base00 = "#0d0d1b",
  base01 = "#0C171B",
  base02 = "#668793",
  base03 = "#192428",
  base04 = "#212C30",
  base05 = "#D9D7D6",
  base06 = "#E3E1E0",
  base07 = "#EDEBEA",
  base08 = "#b1bbf9",
  base09 = "#ecd28b",
  base0A = "#4ec9b0",
  base0B = "#82c29c",
  base0C = "#dcdcaa",
  base0D = "#79AAEB",
  base0E = "#C488EC",
  base0F = "#F16269",
}

M.type = "dark"

M = require("base46").override_theme(M, "rxyhn")

return M
