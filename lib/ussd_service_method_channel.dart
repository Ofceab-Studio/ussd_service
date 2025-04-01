import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'ussd_service_platform_interface.dart';

/// An implementation of [UssdServicePlatform] that uses method channels.
class MethodChannelUssdService extends UssdServicePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('ussd_service');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
