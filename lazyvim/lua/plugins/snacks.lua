return {
  {
    "folke/snacks.nvim",
    opts = {
      scroll = { enabled = false },
      explorer = {
        enabled = true,
        win = {
          list = {
            keys = {
              ["<C-f>"] = "next_page", -- 下一页
              ["<C-b>"] = "prev_page", -- 上一页
            },
          },
        },
      },
    },
  },
}
