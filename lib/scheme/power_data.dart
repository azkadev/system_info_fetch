// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class PowerData extends JsonScheme {
  PowerData(super.rawData);

  static Map get defaultData {
    return {"@type": "powerData", "level": 0, "is_charging": false};
  }

  String? get special_type {
    try {
      if (rawData["@type"] is String == false) {
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_type(String? value) {
    rawData["@type"] = value;
  }

  num? get level {
    try {
      if (rawData["level"] is num == false) {
        return null;
      }
      return rawData["level"] as num;
    } catch (e) {
      return null;
    }
  }

  set level(num? value) {
    rawData["level"] = value;
  }

  bool? get is_charging {
    try {
      if (rawData["is_charging"] is bool == false) {
        return null;
      }
      return rawData["is_charging"] as bool;
    } catch (e) {
      return null;
    }
  }

  set is_charging(bool? value) {
    rawData["is_charging"] = value;
  }

  static PowerData create({
    String special_type = "powerData",
    num? level,
    bool? is_charging,
  }) {
    // PowerData powerData = PowerData({
    Map powerData_data_create_json = {
      "@type": special_type,
      "level": level,
      "is_charging": is_charging,
    };

    powerData_data_create_json.removeWhere((key, value) => value == null);
    PowerData powerData_data_create = PowerData(powerData_data_create_json);

    return powerData_data_create;
  }
}
