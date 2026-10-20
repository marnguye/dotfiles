return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "marilari88/neotest-vitest",
      "nvim-neotest/neotest-jest",
      "nvim-neotest/neotest-python",
    },
    opts = {
      adapters = {
        ["neotest-vitest"] = {},
        ["neotest-jest"] = {},
        ["neotest-python"] = {
          runner = "pytest",
        },
        ["neotest-golang"] = {
          dap_go_enabled = false,
        },
      },
      status = {
        enabled = true,
        virtual_text = true,
        signs = true,
      },
      output = {
        enabled = true,
        open_on_run = false,
      },
      output_panel = {
        enabled = true,
        open = "botright split | resize 12",
      },
      summary = {
        enabled = true,
      },
    },
    keys = {
      { "<leader>tt", false },
      {
        "<leader>tn",
        function()
          require("neotest").run.run()
        end,
        desc = "Run nearest test",
      },
      {
        "<leader>tf",
        function()
          require("neotest").run.run(vim.fn.expand("%:p"))
        end,
        desc = "Run current test file",
      },
      {
        "<leader>ta",
        function()
          require("neotest").run.run(vim.uv.cwd())
        end,
        desc = "Run all tests",
      },
      {
        "<leader>tl",
        function()
          require("neotest").run.run_last()
        end,
        desc = "Run last test",
      },
      {
        "<leader>to",
        function()
          require("neotest").output.open({ enter = true, auto_close = true })
        end,
        desc = "Show test output",
      },
      {
        "<leader>ts",
        function()
          require("neotest").summary.toggle()
        end,
        desc = "Toggle test summary",
      },
      {
        "<leader>tx",
        function()
          require("neotest").run.stop()
        end,
        desc = "Stop test",
      },
    },
  },
}
