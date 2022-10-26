local status_ok, dap = pcall(require, "nvim-dap")
if not status_ok then return end
dap.setup(astronvim.user_plugin_opts("plugins.nvim-dap"))
