local status_ok, flutter_tool = pcall(require, "flutter-tools")
if not status_ok then return end
flutter_tool.setup(astronvim.user_plugin_opts("plugins.flutter-tool"))
