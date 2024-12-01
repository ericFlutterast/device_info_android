import 'package:device_info_platform_interface/device_info_platform_interface.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/// An implementation of [DeviceInfoAndroidPlatform] that uses method channels.
class MethodChannelDeviceInfoAndroid implements DeviceInfoPlatform {
  @visibleForTesting
  final methodChannel = const MethodChannel('device_info_android');

  @override
  Future<num> batteryLevel() async => await methodChannel.invokeMethod("getBatteryLevel");

  @override
  Future<String> deviseName() async => await methodChannel.invokeMethod("getDeviceName");

  @override
  Future<String> model() async => await methodChannel.invokeMethod("getDeviceModel");

  @override
  Future<String> systemName() async => await methodChannel.invokeMethod("getSystemName");

  @override
  Future<String> systemVersion() async => await methodChannel.invokeMethod("getSystemVersion");
}
