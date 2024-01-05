#include "include/flutterflow_components/flutterflow_components_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutterflow_components_plugin.h"

void FlutterflowComponentsPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutterflow_components::FlutterflowComponentsPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
