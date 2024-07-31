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
// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps

import 'package:general_lib/general_lib.dart';
import 'package:system_info_fetch/scheme/memory_data.dart';
import 'package:universal_io/io.dart';

MemoryData getRamData({
  bool isThrowOnError = false,
}) {
  try {
    if (Dart.isAndroid) {
      final String memInfoRaw = File("/proc/meminfo").readAsStringSync().trim();
      final Map memoryData = {
        "@type": "memoryData",
      };
      final List<String> mems = memInfoRaw.split("\n");
      for (var i = 0; i < mems.length; i++) {
        final String mem = mems[i];
        final String key = (mem.split(":").first.trim())
            .snakeCaseClass()
            .trim()
            .replaceAll(RegExp(r"([()]+)", caseSensitive: false), "_")
            .replaceAll(RegExp(r"([_]+)", caseSensitive: false), "_")
            .replaceAll(RegExp(r"^(_)", caseSensitive: false), "")
            .replaceAll(RegExp(r"(_)$", caseSensitive: false), "")
            .trim();
        final int value = int.tryParse(RegExp(r"([0-9]+)", caseSensitive: false)
                    .stringMatch(mem.split(":").last.trim()) ??
                "0") ??
            0;
        memoryData.addAll({
          key: value * 1024,
        });
      }
      return MemoryData(memoryData);
    }
    if (Dart.isLinux) {
      final String memInfoRaw = File("/proc/meminfo").readAsStringSync().trim();
      final Map memoryData = {
        "@type": "memoryData",
      };
      final List<String> mems = memInfoRaw.split("\n");
      for (var i = 0; i < mems.length; i++) {
        final String mem = mems[i];
        final String key = (mem.split(":").first.trim())
            .snakeCaseClass()
            .trim()
            .replaceAll(RegExp(r"([()]+)", caseSensitive: false), "_")
            .replaceAll(RegExp(r"([_]+)", caseSensitive: false), "_")
            .replaceAll(RegExp(r"^(_)", caseSensitive: false), "")
            .replaceAll(RegExp(r"(_)$", caseSensitive: false), "")
            .trim();
        final int value = int.tryParse(RegExp(r"([0-9]+)", caseSensitive: false)
                    .stringMatch(mem.split(":").last.trim()) ??
                "0") ??
            0;
        memoryData.addAll({
          key: value * 1024,
        });
      }
      // memoryData.printPretty();
      return MemoryData(memoryData);
    }
  } catch (e) {
    if (isThrowOnError) {
      rethrow;
    }
  }

  return MemoryData.create();
}

int getRamUsageByPid({
  int? pid_procces,
  bool isThrowOnError = false,
}) {
  pid_procces ??= pid;
  try {
    if (Dart.isAndroid || Dart.isLinux) {
      final File proc_status = File("/proc/${pid_procces}/status");
      // [VmRSS  , 256364, kB]
      final List<String> vm_rss = proc_status
          .readAsStringSync()
          .split("\n")
          .firstWhere((element) =>
              RegExp("VmRSS", caseSensitive: false).hasMatch(element))
          .replaceAll(RegExp(":", caseSensitive: false), "")
          .split(" ")
          .where((element) => element.isNotEmpty)
          .toList();
      final int vm_rss_size = (int.tryParse(vm_rss[1]) ?? 0) * 1024;
      return vm_rss_size;
    }
  } catch (e) {
    if (isThrowOnError) {
      rethrow;
    }
  }

  return 0;
}
