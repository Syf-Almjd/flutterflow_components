import 'package:flutter_test/flutter_test.dart';
import 'package:flutterflow_components/flutterflow_components.dart';
import 'package:flutterflow_components/flutterflow_components_platform_interface.dart';
import 'package:flutterflow_components/flutterflow_components_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterflowComponentsPlatform
    with MockPlatformInterfaceMixin
    implements FlutterflowComponentsPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterflowComponentsPlatform initialPlatform = FlutterflowComponentsPlatform.instance;

  test('$MethodChannelFlutterflowComponents is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterflowComponents>());
  });

  test('getPlatformVersion', () async {
    FlutterflowComponents flutterflowComponentsPlugin = FlutterflowComponents();
    MockFlutterflowComponentsPlatform fakePlatform = MockFlutterflowComponentsPlatform();
    FlutterflowComponentsPlatform.instance = fakePlatform;

    expect(await flutterflowComponentsPlugin.getPlatformVersion(), '42');
  });
}
