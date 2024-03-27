return {
  {
    "mfussenegger/nvim-dap",
    keys = {
      {
        "<leader>db",
        "<cmd> DapToggleBreakpoint <CR>",
        desc = "Add breakpoint at line",
      },
      {
        "<leader>dus",
        function()
          local widgets = require("dap.ui.widgets")
          local sidebar = widgets.sidebar(widgets.scopes)
          sidebar.open()
        end,
        desc = "Open debugging sidebar",
      },
    },
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      local dap, dapui = require("dap"), require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },
}
