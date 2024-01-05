#ifndef FLUTTER_PLUGIN_FLUTTERFLOW_COMPONENTS_PLUGIN_H_
#define FLUTTER_PLUGIN_FLUTTERFLOW_COMPONENTS_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace flutterflow_components {

class FlutterflowComponentsPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FlutterflowComponentsPlugin();

  virtual ~FlutterflowComponentsPlugin();

  // Disallow copy and assign.
  FlutterflowComponentsPlugin(const FlutterflowComponentsPlugin&) = delete;
  FlutterflowComponentsPlugin& operator=(const FlutterflowComponentsPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace flutterflow_components

#endif  // FLUTTER_PLUGIN_FLUTTERFLOW_COMPONENTS_PLUGIN_H_
