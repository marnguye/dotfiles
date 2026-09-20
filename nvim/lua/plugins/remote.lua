return {
  "amitds1997/remote-nvim.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-telescope/telescope.nvim",
  },
  opts = {
    ssh_config = {
      ssh_binary = "ssh",
      scp_binary = "scp",
      ssh_config_file_paths = { "$HOME/.ssh/config" },
    },
    remote = {
      copy_dirs = {
        config = {
          base = vim.fn.stdpath("config"),
          dirs = "*",
          compression = { enabled = true },
        },
      },
    },
    -- Default working directory na remote
    devpod = {
      binary = "devpod",
    },
  },
  config = function(_, opts)
    require("remote-nvim").setup(opts)
  end,
}
