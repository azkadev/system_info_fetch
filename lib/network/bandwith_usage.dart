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
// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_string_interpolations, empty_catches

import 'package:general_lib/general_lib.dart';
import 'package:universal_io/io.dart';

(int bandwith_download, int bandwith_upload) getNetworkBandwithUsageByPid({
  int? pidProcces,
  bool isThrowOnError = false,
}) {
  pidProcces ??= pid;

  try {
    if (Dart.isAndroid || Dart.isLinux) {
      final file = File('/proc/${pidProcces}/net/dev');
      final String data = (file.readAsStringSync()).trim();

      if (data.isNotEmpty) {
        final List<String> datas = data.split("\n");
        datas.removeAt(0);
        datas.removeAt(0);

        int bandwith_download = 0;
        int bandwith_upload = 0;

        for (var i = 0; i < datas.length; i++) {
          final String data_loop = datas[i];

          List<String> data_loops = data_loop
              .split(" ")
              .where((element) => element.trim().isNotEmpty)
              .toList();
          if (data_loops.isEmpty) {
            continue;
          }
          try {
            bandwith_download += int.tryParse("${data_loops[1]}") ?? 0;
            bandwith_upload += int.tryParse("${data_loops[9]}") ?? 0;
          } catch (e) {}
        }
        return (bandwith_download, bandwith_upload);
      }
    }
  } catch (e) {
    if (isThrowOnError) {
      rethrow;
    }
  }

  return (0, 0);
}

(int bandwith_download, int bandwith_upload) getNetworkBandwithUsage({
  bool isThrowOnError = false,
}) {
  try {
    if (Dart.isAndroid || Dart.isLinux) {
      final file = File('/proc/net/dev');
      final String data = (file.readAsStringSync()).trim();

      if (data.isNotEmpty) {
        final List<String> datas = data.split("\n");
        datas.removeAt(0);
        datas.removeAt(0);

        int bandwith_download = 0;
        int bandwith_upload = 0;

        for (var i = 0; i < datas.length; i++) {
          final String data_loop = datas[i];

          final List<String> data_loops = data_loop
              .split(" ")
              .where((element) => element.trim().isNotEmpty)
              .toList();
          if (data_loops.isEmpty) {
            continue;
          }
          try {
            bandwith_download += int.tryParse("${data_loops[1]}") ?? 0;
            bandwith_upload += int.tryParse("${data_loops[9]}") ?? 0;
          } catch (e) {}
        }
        return (bandwith_download, bandwith_upload);
      }
    }
  } catch (e) {
    if (isThrowOnError) {
      rethrow;
    }
  }

  return (0, 0);
}
