/* <!-- START LICENSE -->


This Software / Program / Source Code Created By Developer From Company GLOBAL CORPORATION
Social Media:

   - Youtube: https://youtube.com/@Global_Corporation 
   - Github: https://github.com/globalcorporation
   - TELEGRAM: https://t.me/GLOBAL_CORP_ORG_BOT

All code script in here created 100% original without copy / steal from other code if we copy we add description source at from top code

If you wan't edit you must add credit me (don't change)

If this Software / Program / Source Code has you

Jika Program ini milik anda dari hasil beli jasa developer di (Global Corporation / apapun itu dari turunan itu jika ada kesalahan / bug / ingin update segera lapor ke sub)

Misal anda beli Beli source code di Slebew CORPORATION anda lapor dahulu di slebew jangan lapor di GLOBAL CORPORATION!

Jika ada kendala program ini (Pastikan sebelum deal project tidak ada negosiasi harga)
Karena jika ada negosiasi harga kemungkinan

1. Software Ada yang di kurangin
2. Informasi tidak lengkap
3. Bantuan Tidak Bisa remote / full time (Ada jeda)

Sebelum program ini sampai ke pembeli developer kami sudah melakukan testing

jadi sebelum nego kami sudah melakukan berbagai konsekuensi jika nego tidak sesuai ? 
Bukan maksud kami menipu itu karena harga yang sudah di kalkulasi + bantuan tiba tiba di potong akhirnya bantuan / software kadang tidak lengkap


<!-- END LICENSE --> */
// ignore_for_file: non_constant_identifier_names, empty_catches

import 'package:general_lib/general_lib.dart';
import 'package:system_info_fetch/scheme/scheme.dart';
import 'package:universal_io/io.dart';

OperatingSystemData getOperatingSystemData({
  bool isThrowOnError = false,
}) {
  try {
    if (Dart.isAndroid) {
      final Map osData = {
        "@type": "osData",
        "name": "",
      };
      String os = "Android";

      try {
        os += " ${Process.runSync("getprop", [
              "ro.build.version.release",
            ]).stdout.toString().trim()}";
      } catch (e) {}
      try {
        os += " ${Process.runSync("getprop", [
              "ro.product.name",
            ]).stdout.toString().trim()}";
      } catch (e) {}
      if (os.isEmpty) {
        os = Platform.operatingSystemVersion;
      }
      osData["name"] = os;
      return OperatingSystemData(osData);
    }
    if (Dart.isLinux) {
      final Map osData = {
        "@type": "osData",
        "name": "",
      };

      final String os_release = File("/etc/os-release").readAsStringSync();
      final lines = os_release.split("\n");
      final variables = <String, String>{};

      for (var line in lines) {
        final split = line.split("=");
        if (split.length == 2) {
          variables[split[0]] = split[1];
        }
      }
      String os = variables["PRETTY_NAME"] ?? variables["NAME"] ?? variables["ID"] ?? "";
      if (os.startsWith('"')) {
        os = os.substring(1, os.length - 1);
      }

      if (os.isEmpty) {
        os = File("/proc/version_signature").readAsStringSync().trim();
      }
      os = os.trim();
      if (os.isEmpty) {
        os = Platform.operatingSystemVersion;
      }
      osData["name"] = os;
      return OperatingSystemData(osData);
    }
  } catch (e) {
    // e.printPretty();
    if (isThrowOnError) {
      rethrow;
    }
  }

  return OperatingSystemData({});
}
