// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";


 
class CpuData extends JsonScheme {

  
  CpuData(super.rawData);
   
  static Map get defaultData {
    return {"@type":"cpuData","name":""};
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

    String special_type = "cpuData",
    String? name,
})  {
    // CpuData cpuData = CpuData({
Map cpuData_data_create_json = {
  
      "@type": special_type,
      "name": name,


};


          cpuData_data_create_json.removeWhere((key, value) => value == null);
CpuData cpuData_data_create = CpuData(cpuData_data_create_json);

return cpuData_data_create;



      }
}