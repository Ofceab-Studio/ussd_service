import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'ussd_service_method_channel.dart';

abstract class UssdServicePlatform extends PlatformInterface {
  /// Constructs a UssdServicePlatform.
  UssdServicePlatform() : super(token: _token);

  static final Object _token = Object();

  static UssdServicePlatform _instance = MethodChannelUssdService();

  /// The default instance of [UssdServicePlatform] to use.
  ///
  /// Defaults to [MethodChannelUssdService].
  static UssdServicePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [UssdServicePlatform] when
  /// they register themselves.
  static set instance(UssdServicePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
