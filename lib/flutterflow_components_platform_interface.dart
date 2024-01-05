import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutterflow_components_method_channel.dart';

abstract class FlutterflowComponentsPlatform extends PlatformInterface {
  /// Constructs a FlutterflowComponentsPlatform.
  FlutterflowComponentsPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterflowComponentsPlatform _instance = MethodChannelFlutterflowComponents();

  /// The default instance of [FlutterflowComponentsPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterflowComponents].
  static FlutterflowComponentsPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterflowComponentsPlatform] when
  /// they register themselves.
  static set instance(FlutterflowComponentsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
