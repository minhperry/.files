return {
  {
    "NvChad/nvim-colorizer.lua",
    event = "BufReadPre",
    opts = {
      filetypes = { "*" },
      user_default_options = {
        RGB = true, -- #RGB
        RRGGBB = true, -- #RRGGBB
        names = false, -- "red", "blue"
        css = true,
        css_fn = true, -- rgb(), hsl()
        mode = "background", -- or "foreground"
      },
    },
  },
}
