import 'dart:async';

import 'package:flutter/services.dart';

class Greyplugin {
  static const MethodChannel _channel =
      const MethodChannel('greyplugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
