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
/// Support for doing something awesome.
///
/// More dartdocs go here.
// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, empty_catches, constant_identifier_names, unused_local_variable

library system_info_fetch;

// import 'package:filesize/filesize.dart';
import 'package:general_lib/general_lib.dart';
import 'package:system_info_fetch/cpu/cpu.dart';
import 'package:system_info_fetch/memory/memory_core.dart';
import 'package:system_info_fetch/network/bandwith_usage.dart';
import 'package:system_info_fetch/os/os_core.dart';
import 'package:system_info_fetch/power/power.dart';
import 'package:system_info_fetch/scheme/scheme.dart';

import 'src/system_info_fetch_base.dart' as sys_info;

class SystemInfoFetch {
  static final DateTime date_start = DateTime.now();
  const SystemInfoFetch();

  static String? get get_gpu {
    try {
      return sys_info.gpuInfo;
    } catch (e) {
      return null;
    }
  }

  static String? get get_network {
    try {
      return sys_info.networkInfo;
    } catch (e) {
      return null;
    }
  }

  static String? get get_disk {
    try {
      return sys_info.diskInfo;
    } catch (e) {
      return null;
    }
  }

  static String? get get_power {
    try {
      final PowerData powerData = getPowerData();
      return "${powerData.level}% ${(powerData.is_charging == true) ? "Charging" : ""}";
    } catch (e) {
      return null;
    }
  }

  static String? get get_uptime {
    try {
      return sys_info.upTimeInfo;
    } catch (e) {
      print(e);
      return null;
    }
  }

  static String? get get_kernel {
    try {
      return sys_info.kernelInfo;
    } catch (e) {
      return null;
    }
  }

  static String? get get_shell {
    try {
      return sys_info.shellInfo;
    } catch (e) {
      return null;
    }
  }

  static String Function(String origin_model) onGetTitle =
      (String originModel) {
    return originModel;
  };

  static String? get get_title {
    try {
      return onGetTitle(sys_info.titleInfo.trim());
    } catch (e) {
      try {
        return sys_info.titleInfo.trim();
      } catch (e) {
        return null;
      }
    }
  }

  static String? get get_arch {
    try {
      return sys_info.archInfo;
    } catch (e) {
      return null;
    }
  }

  static String? get get_executable_type {
    try {
      return Dart.executable_type.name;
    } catch (e) {
      return null;
    }
  }

  static String Function(String origin_model) onGetModel =
      (String originModel) {
    return originModel;
  };

  static String? get get_model {
    try {
      return onGetModel(sys_info.modelInfo.trim());
    } catch (e) {
      try {
        return sys_info.modelInfo.trim();
      } catch (e) {
        return null;
      }
    }
  }

  static int? get_ram_usage_by_pid({
    int? pidProcces,
  }) {
    try {
      return getRamUsageByPid(
        pid_procces: pidProcces,
      );
    } catch (e) {
      return null;
    }
  }

  static MemoryData? get get_ram_data {
    try {
      return getRamData();
    } catch (e) {
      return null;
    }
  }

  static (int download, int upload) get get_network_bandwith_usage {
    return getNetworkBandwithUsage();
  }

  static (int download, int upload) get_network_bandwith_usage_by_pid({
    int? pidProcces,
  }) {
    return getNetworkBandwithUsageByPid(
      pidProcces: pidProcces,
    );
  }

  static Map<String, String?> toJson({
    int? pidProcces,
  }) {
    final OperatingSystemData operatingSystemData = getOperatingSystemData();
    final CpuData cpuData = getCpuData();
    final MemoryData memory_ram = get_ram_data ?? MemoryData({});
//     {
//     "OS": "Ubuntu 23.10 x86_64",
//     "Host": "Modern 14 B5M REV:1.0",
//     "Kernel": "6.5.0-13-generic",
//     "Uptime": "5 days, 4 hours, 26 mins",
//     "Packages": "2123 (dpkg), 18 (flatpak), 16 (snap)",
//     "Shell": "zsh 5.9",
//     "Resolution": "1920x1080",
//     "DE": "GNOME 45.0",
//     "WM": "Mutter",
//     "WM Theme": "WhiteSur-Dark",
//     "Theme": "WhiteSur-Dark [GTK2/3]",
//     "Icons": "BigSur-Originals [GTK2/3]",
//     "Terminal": "gnome-terminal",
//     "CPU": "AMD Ryzen 5 5500U with Radeon Graphics (12) @ 4.056GHz",
//     "GPU": "AMD ATI 03:00.0   Lucienne",
//     "GPU": "AMD ATI 03:00.0 Lucienne",
//     "Memory": "11383MiB / 15338MiB",
//     "Version": "7.1.0"
// }
    final (int bandwith_download, bandwith_upload) = get_network_bandwith_usage;
    final (int bandwith_download_by_pid, bandwith_upload_by_pid) =
        get_network_bandwith_usage_by_pid(
      pidProcces: pidProcces,
    );
    final Map<String, String?> data = {
      "title": get_title,
      "os": operatingSystemData.name,
      "platform_type": () {
        if (Dart.isWeb) {
          return "Web";
        }

        if (Dart.isAndroid) {
          return "Android";
        }
        if (Dart.isFuchsia) {
          return "Fuchsia";
        }
        if (Dart.isLinux) {
          return "Linux";
        }

        if (Dart.isIOS) {
          return "iOS";
        }
        if (Dart.isMacOS) {
          return "macOS";
        }
        if (Dart.isWindows) {
          return "Windows";
        }
        return null;
      }(),
      "executable_type": get_executable_type,
      "arch": get_arch,
      "host": get_model,
      "device_name": get_model,
      "kernel": get_kernel,
      "uptime_program": DateTime.now().difference(date_start).toAgo(),
      "uptime": get_uptime.toString(),
      "shell": get_shell,
      "resolution": null,
      "de": null,
      "wm": "",
      "wm_theme": "",
      "theme": "",
      "icons": "",
      "terminal": "",
      "cpu": cpuData.name,
      "gpu": get_gpu,
      "network": get_network,
      "disk": get_disk,
      "power": get_power,
      "ram_total": FileSize.filesize(
        size: memory_ram.mem_total ?? 0,
      ),
      "ram_available": FileSize.filesize(size: memory_ram.mem_available ?? 0),
      "ram_usage": FileSize.filesize(
          size: (memory_ram.mem_total ?? 0) - (memory_ram.mem_available ?? 0)),
      "ram_cached": FileSize.filesize(size: (memory_ram.cached ?? 0)),
      "swap_total": FileSize.filesize(size: memory_ram.swap_total ?? 0),
      "swap_available": FileSize.filesize(size: memory_ram.swap_free ?? 0),
      "swap_cache": FileSize.filesize(size: memory_ram.swap_cached ?? 0),
      "ram_commited": FileSize.filesize(size: memory_ram.committed_a_s ?? 0),
      "ram_swap_total": FileSize.filesize(
          size: (memory_ram.swap_total ?? 0) + (memory_ram.mem_total ?? 0)),
      "version": "",
      // "total_bandwith_download": bandwith_download,

      "total_bandwith_download": FileSize.filesize(
        size: bandwith_download,
      ),
      "total_bandwith_upload": FileSize.filesize(
        size: bandwith_upload,
      ),
      "total_bandwith": FileSize.filesize(
        size: bandwith_upload + bandwith_download,
      ),

      // "total_bandwith_download_by_this_program": FileSize.filesize(
      //   size: bandwith_download_by_pid,
      // ),
      // "total_bandwith_upload_by_this_program": FileSize.filesize(
      //   size: bandwith_upload_by_pid,
      // ),
      // "total_bandwith_by_this_program": FileSize.filesize(
      //   size: bandwith_upload_by_pid + bandwith_download_by_pid,
      // ),
      "ram_usage_by_this_program": FileSize.filesize(
        size: get_ram_usage_by_pid(
          pidProcces: pidProcces,
        ),
      ),
    };

    data.removeWhere((key, value) => value == null);

    data.removeWhere((key, value) {
      if (value != null && value.trim().isEmpty) {
        return true;
      }
      return false;
    });
    return data;
  }

  static SystemInfoFetchData toSystemInfoFetchData({
    int? pidProcces,
  }) {
    return SystemInfoFetchData(toJson(pidProcces: pidProcces));
  }

  // @override
  static String toMessage({
    String title = "",
    List<String> ignores = const [],
    int? pidProcces,
    String Function(String key, String? value, String defaultValue)? rewrite,
  }) {
    String message = title;
    toJson(pidProcces: pidProcces).forEach((key, value) {
      value ??= "-";
      String defaultValue =
          "${key.split("_").map((e) => e.toUpperCaseFirstData()).join(" ")}: ${value}";
      if (rewrite != null) {
        message += rewrite.call(key, value, defaultValue);
      } else {
        if (ignores.contains(key)) {
          return;
        }
        message += "\n${defaultValue}";
      }
    });
    return message;
  }

  static Stream<Map> realtimeToJson() async* {
    while (true) {
      await Future.delayed(Duration(microseconds: 1));
      yield toJson();
    }
  }
}
