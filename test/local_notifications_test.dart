import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:local_notifications/local_notifications.dart';

void main() {
  const MethodChannel channel = MethodChannel('local_notifications');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await LocalNotifications.platformVersion, '42');
  });
}
