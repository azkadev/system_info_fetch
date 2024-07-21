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
import 'package:general_lib/general_lib.dart';
import 'package:path/path.dart';
import 'package:universal_io/io.dart';

void main(List<String> args) async {
  List<Map> schemes = [
    {
      "@type": "memoryData",
      "mem_total": 0,
      "mem_free": 0,
      "mem_available": 0,
      "buffers": 0,
      "cached": 0,
      "swap_cached": 0,
      "active": 0,
      "inactive": 0,
      "active_anon": 0,
      "inactive_anon": 0,
      "active_file": 0,
      "inactive_file": 0,
      "unevictable": 0,
      "mlocked": 0,
      "swap_total": 0,
      "swap_free": 0,
      "zswap": 0,
      "zswapped": 0,
      "dirty": 0,
      "writeback": 0,
      "anon_pages": 0,
      "mapped": 0,
      "shmem": 0,
      "k_reclaimable": 0,
      "slab": 0,
      "s_reclaimable": 0,
      "s_unreclaim": 0,
      "kernel_stack": 0,
      "page_tables": 0,
      "sec_page_tables": 0,
      "n_f_s_unstable": 0,
      "bounce": 0,
      "writeback_tmp": 0,
      "commit_limit": 0,
      "committed_a_s": 0,
      "vmalloc_total": 0,
      "vmalloc_used": 0,
      "vmalloc_chunk": 0,
      "percpu": 0,
      "hardware_corrupted": 0,
      "anon_huge_pages": 0,
      "shmem_huge_pages": 0,
      "shmem_pmd_mapped": 0,
      "file_huge_pages": 0,
      "file_pmd_mapped": 0,
      "unaccepted": 0,
      "huge_pages_total": 0,
      "huge_pages_free": 0,
      "huge_pages_rsvd": 0,
      "huge_pages_surp": 0,
      "hugepagesize": 0,
      "hugetlb": 0,
      "direct_map4k": 0,
      "direct_map2_m": 0,
      "direct_map1_g": 0,
    },
    {
      "@type": "operatingSystemData",
      "name": "Ubuntu 23.10",
      "arch": "",
      "version": "",
      "full_name": "",
    },
    {
      "@type": "cpuData",
      "name": "",
    },
    {
      "@type": "systemInfoFetchData",
      "title": "",
      "os": "Ubuntu 23.10",
      "platform_type": "Linux",
      "arch": "x86_64",
      "host": "Modern 14 B5M REV:1.0 ",
      "kernel": "Linux 6.5.0-14-generic x86_64",
      "uptime": "6 Hours ",
      "shell": "zsh 5.9",
      "resolution": null,
      "de": null,
      "wm": "",
      "wm_theme": "",
      "theme": "",
      "icons": "",
      "terminal": "",
      "cpu": "AMD Ryzen 5 5500U with Radeon Graphics (12)",
      "gpu": "Advanced Micro Devices, Inc. [AMD/ATI] Lucienne",
      "ram_total": "15 GB",
      "ram_free": "2 GB",
      "ram_available": "6 GB",
      "swap_total": "8 GB",
      "swap_free": "6 GB",
      "swap_cache": "96 MB",
      "version": "",
      "device_name": "Realme 5",
    },
    {
      "@type": "powerData",
      
      "level": 0,
      
      "is_charging": false,

    }
  ];

  await jsonToScripts(schemes,
      directory: Directory(join(Directory.current.path, "lib", "scheme")));
}
