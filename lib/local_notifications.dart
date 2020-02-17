import 'dart:async';

import 'package:flutter/services.dart';

class LocalNotifications {
  static const MethodChannel _channel =
      const MethodChannel('local_notifications');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
