// ignore_for_file: empty_catches, unnecessary_brace_in_string_interps, non_constant_identifier_names

import 'package:universal_io/io.dart'; 

const _bat0Path = "/sys/class/power_supply/BAT0";
const _bat1Path = "/sys/class/power_supply/BAT1";
const _battPath = "/sys/class/power_supply/BATT";
const _powerNowFile = "/power_now";
const _currentNowFile = "/current_now";
const _voltageNowFile = "/voltage_now";
const _statusFile = "/status";

extension _Exkaksoaksoakoko on File {
  int _get_file_value() {
    try {
      return int.tryParse(readAsStringSync()) ?? 0;
    } catch (e) {}
    return 0;
  }
}

String powerConsumtion()  {
  final String realBatPath = () {
    if (Directory(_bat1Path).existsSync()) {
      return _bat1Path;
    }
    if (Directory(_battPath).existsSync()) {
      return _battPath;
    }
    return _bat0Path;
  }();

  final num rawPower = () {
    try {
      {
        final File filePowerNow = File(realBatPath + _powerNowFile);

        if (filePowerNow.existsSync()) {
          return filePowerNow._get_file_value() / 1000000;
        }
      }
      {
        return (File(realBatPath + _currentNowFile)._get_file_value() * File(realBatPath + _voltageNowFile)._get_file_value()) / 1000000000000;
      }
    } catch (e) {}
    return 0;
  }();

  final String power = rawPower.toStringAsFixed(1);
  final String status = () {
    try {
      final data = File(realBatPath + _statusFile).readAsStringSync().trim();
      if (data == "Charging") {
        return "+";
      } else if (data == "Full") {
        return "";
      } else {
        return "-";
      }
    } catch (e) {}
    return "";
  }();
  return ("${status}${power} W");
  
}
