// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";


 
class CpuData extends JsonScheme {

  
  CpuData(super.rawData);
  
  /// return default data
  /// 
  static Map get defaultData {
    return {"@type":"cpuData","name":""};
  }

  /// create [CpuData]
  /// Empty  
  static CpuData empty() {
    return CpuData({});
  }

  

  
  String? get special_type {
    try {
      if (rawData["@type"] is String == false){
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


  
  String? get name {
    try {
      if (rawData["name"] is String == false){
        return null;
      }
      return rawData["name"] as String;
    } catch (e) {
      return null;
    }
  }

  
  set name(String? value) {
    rawData["name"] = value;
  }


  
  static CpuData create({
              bool schemeUtilsIsSetDefaultData = false,

    String special_type = "cpuData",
    String? name,
})  {
    // CpuData cpuData = CpuData({
final Map cpuData_data_create_json = {
  
      "@type": special_type,
      "name": name,


};


          cpuData_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (cpuData_data_create_json.containsKey(key) == false) {
          cpuData_data_create_json[key] = value;
        }
      });
    }
return CpuData(cpuData_data_create_json);


      }
}