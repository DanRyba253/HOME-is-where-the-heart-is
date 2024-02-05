return {
  "ThePrimeagen/harpoon",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function ()
    require('harpoon').setup {}
  end,
}
