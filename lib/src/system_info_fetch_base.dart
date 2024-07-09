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
// ignore_for_file: unnecessary_brace_in_string_interps, empty_catches

import 'package:general_lib/general_lib.dart';
import 'package:universal_io/io.dart';

String get gpuInfo {
  final data = (Process.runSync(
    "lspci",
    [],
  )).stdout.toString();
  List<String> gpuRaws = data.split("\n");
  List<String> gpus = [];
  for (var i = 0; i < gpuRaws.length; i++) {
    String line = gpuRaws[i];
    if (!line.contains(":")) continue;

    final first = line.split(" ")[1];
    if (first != "Display" && first != "3D" && first != "VGA") {
      continue;
    }
    String gpu =
        line.split(": ")[1].replaceAll(RegExp("\\(rev .*\\)\$"), "").trim();
    if (gpu.startsWith("NVIDIA")) {
      gpu = RegExp("\\[(.*)\\]").firstMatch(gpu)?.group(1) ?? gpu;
    }
    if (gpu.startsWith("Intel")) {
      gpu = gpu.replaceAll("(R)", "");
      gpu = gpu.replaceAll("Corporation", "");
      gpu = gpu.replaceAll("Integrated Graphics Controller", "");
    }
    gpus.add(gpu.trim());
  }
  return gpus.join("\n");
}

String get kernelInfo {
  if (Dart.isAndroid) {
    return (Process.runSync("uname", ["-svm"])).stdout.toString().trim();
  }
  return (Process.runSync("uname", ["-srp"])).stdout.toString().trim();
}

String get archInfo {
  if (Dart.isAndroid) {
    // asnrv
    return ((Process.runSync("uname", [
      "-m",
    ])).stdout.toString().trim());
  }
  return (Process.runSync("uname", ["-p"])).stdout.toString().trim();
}

String? get upTimeInfo {
  if (Dart.isAndroid) {
    // try {
    //   return DateTime.now().difference(DateTime.parse("2024-02-24 14:40:01"));
    // } catch (e) {
    //   print(e);
    // }
    return ((Process.runSync("uptime", ["-p"])).stdout.toString().trim());
    // return Duration.zero;
  }

  return ((Process.runSync("uptime", ["-p"])).stdout.toString().trim());
  // double? secondsPassed = double.tryParse((File("/proc/uptime").readAsStringSync()).split(" ").first);
  // // secondsPassed.printPretty();
  // if (secondsPassed == null) return null;
  // return Duration(seconds: secondsPassed.floor());
}

String? get shellInfo {
  if (Dart.isAndroid) {
    return "terminal";
  }
  String? shellPath = Platform.environment["SHELL"];
  if (shellPath == null) return null;
  String shell = shellPath.split("/").last;
  String version = "";
  switch (shell) {
    case "zsh":
      version = (Process.runSync(shellPath, ["--version"]))
          .stdout
          .toString()
          .split(" ")[1]
          .trim();
      break;
  }
  return "${shell} ${version}".trim();
}

// String? get userInfo {
//   return Platform.environment["USER"];
// }

String get titleInfo {
  return "${(Process.runSync("id", [
        "-un"
      ])).stdout.toString().trim()}-${(Process.runSync("hostname", [
        "-f"
      ])).stdout.toString().trim()}";
}

String get modelInfo {
  if (Dart.isAndroid) {
    return Process.runSync("getprop", [
      "ro.product.model",
    ]).stdout.toString().trim();
  }
  if (Platform.isLinux) {
    String model = "";
    List<String> files = [
      "/sys/devices/virtual/dmi/id/product_name",
      "/sys/devices/virtual/dmi/id/product_version",
    ];
    for (var i = 0; i < files.length; i++) {
      String data = files[i];
      File file = File(data);
      if (file.existsSync()) {
        model += "${file.readAsStringSync().trim()} ";
      }
    }
    return model;
  }
  throw "not support device";
}
