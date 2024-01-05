import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutterflow_components_platform_interface.dart';

/// An implementation of [FlutterflowComponentsPlatform] that uses method channels.
class MethodChannelFlutterflowComponents extends FlutterflowComponentsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutterflow_components');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
