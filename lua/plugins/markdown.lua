-- Markdown editing settings: auto-wrap lines at column 120 while typing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  opts = {
    autocmds = {
      markdown_wrap = {
        {
          event = "FileType",
          pattern = "markdown",
          desc = "Auto-wrap markdown lines at 120 columns",
          callback = function()
            vim.opt_local.textwidth = 120
            vim.opt_local.formatoptions:append "t" -- auto-wrap text using textwidth
          end,
        },
      },
    },
  },
}
