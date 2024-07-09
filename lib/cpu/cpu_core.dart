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
// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:general_lib/general_lib.dart';
import 'package:system_info_fetch/scheme/scheme.dart';
import 'package:universal_io/io.dart';

CpuData getCpuData({
  bool isThrowOnError = false,
}) {
  try {
    if (Dart.isAndroid) {
      Map cpuData = {
        "@type": "cpuData",
        "name": "",
      };
      final String cpuInfo = File("/proc/cpuinfo").readAsStringSync();
      int cores = cpuInfo
          .split("\n")
          .where((line) => line.startsWith("processor"))
          .length;
      String cpu = "unknown";
      cpu = cpuInfo
          .split("\n")
          .lastWhere((line) => line.startsWith("Hardware"))
          .split(": ")[1]
          .split("@")[0];
      cpuData["name"] = "${cpu} (${cores})";

      return CpuData(cpuData);
    }
    if (Dart.isLinux) {
      Map cpuData = {
        "@type": "cpuData",
        "name": "",
      };

      final String cpuInfo = File("/proc/cpuinfo").readAsStringSync();
      int cores = cpuInfo
          .split("\n")
          .where((line) => line.startsWith("processor"))
          .length;
      String cpu = cpuInfo
          .split("\n")
          .firstWhere((line) => line.startsWith("model name"))
          .split(": ")[1]
          .split("@")[0];

      cpu = cpu.replaceAll("(R)", "");
      cpu = cpu.replaceAll("Core(TM)", "");
      cpu = cpu.replaceAll("CPU", "");
      cpu = cpu.trim();
      cpuData["name"] = "${cpu} (${cores})";
      // cpuData.printPretty();
      return CpuData(cpuData);
    }
  } catch (e) {
    if (isThrowOnError) {
      rethrow;
    }
  }
  return CpuData({});
}
