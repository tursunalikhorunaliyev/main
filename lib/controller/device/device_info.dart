import 'package:napt_sklad/controller/device/device_resolution.dart';
import 'package:napt_sklad/controller/device/device_type.dart';

abstract class DeviceInfo {
  //aaaaaaaa
  static List<DeviceResolution> resolutionList = [
    DeviceResolution(width: 1280, height: 720, deviceType: DeviceType.hd),
    DeviceResolution(
        width: 1440, height: 900, deviceType: DeviceType.macBook133),
    DeviceResolution(width: 1920, height: 1080, deviceType: DeviceType.fhd),
    DeviceResolution(width: 2560, height: 1440, deviceType: DeviceType.qhd2k),
    DeviceResolution(width: 3840, height: 2160, deviceType: DeviceType.uh4k),
  ];
}
