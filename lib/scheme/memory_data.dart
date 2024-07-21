// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";


 
class MemoryData extends JsonScheme {

  
  MemoryData(super.rawData);
   
  static Map get defaultData {
    return {"@type":"memoryData","mem_total":0,"mem_free":0,"mem_available":0,"buffers":0,"cached":0,"swap_cached":0,"active":0,"inactive":0,"active_anon":0,"inactive_anon":0,"active_file":0,"inactive_file":0,"unevictable":0,"mlocked":0,"swap_total":0,"swap_free":0,"zswap":0,"zswapped":0,"dirty":0,"writeback":0,"anon_pages":0,"mapped":0,"shmem":0,"k_reclaimable":0,"slab":0,"s_reclaimable":0,"s_unreclaim":0,"kernel_stack":0,"page_tables":0,"sec_page_tables":0,"n_f_s_unstable":0,"bounce":0,"writeback_tmp":0,"commit_limit":0,"committed_a_s":0,"vmalloc_total":0,"vmalloc_used":0,"vmalloc_chunk":0,"percpu":0,"hardware_corrupted":0,"anon_huge_pages":0,"shmem_huge_pages":0,"shmem_pmd_mapped":0,"file_huge_pages":0,"file_pmd_mapped":0,"unaccepted":0,"huge_pages_total":0,"huge_pages_free":0,"huge_pages_rsvd":0,"huge_pages_surp":0,"hugepagesize":0,"hugetlb":0,"direct_map4k":0,"direct_map2_m":0,"direct_map1_g":0};
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


  
  num? get mem_total {
    try {
      if (rawData["mem_total"] is num == false){
        return null;
      }
      return rawData["mem_total"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set mem_total(num? value) {
    rawData["mem_total"] = value;
  }


  
  num? get mem_free {
    try {
      if (rawData["mem_free"] is num == false){
        return null;
      }
      return rawData["mem_free"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set mem_free(num? value) {
    rawData["mem_free"] = value;
  }


  
  num? get mem_available {
    try {
      if (rawData["mem_available"] is num == false){
        return null;
      }
      return rawData["mem_available"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set mem_available(num? value) {
    rawData["mem_available"] = value;
  }


  
  num? get buffers {
    try {
      if (rawData["buffers"] is num == false){
        return null;
      }
      return rawData["buffers"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set buffers(num? value) {
    rawData["buffers"] = value;
  }


  
  num? get cached {
    try {
      if (rawData["cached"] is num == false){
        return null;
      }
      return rawData["cached"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set cached(num? value) {
    rawData["cached"] = value;
  }


  
  num? get swap_cached {
    try {
      if (rawData["swap_cached"] is num == false){
        return null;
      }
      return rawData["swap_cached"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set swap_cached(num? value) {
    rawData["swap_cached"] = value;
  }


  
  num? get active {
    try {
      if (rawData["active"] is num == false){
        return null;
      }
      return rawData["active"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set active(num? value) {
    rawData["active"] = value;
  }


  
  num? get inactive {
    try {
      if (rawData["inactive"] is num == false){
        return null;
      }
      return rawData["inactive"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set inactive(num? value) {
    rawData["inactive"] = value;
  }


  
  num? get active_anon {
    try {
      if (rawData["active_anon"] is num == false){
        return null;
      }
      return rawData["active_anon"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set active_anon(num? value) {
    rawData["active_anon"] = value;
  }


  
  num? get inactive_anon {
    try {
      if (rawData["inactive_anon"] is num == false){
        return null;
      }
      return rawData["inactive_anon"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set inactive_anon(num? value) {
    rawData["inactive_anon"] = value;
  }


  
  num? get active_file {
    try {
      if (rawData["active_file"] is num == false){
        return null;
      }
      return rawData["active_file"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set active_file(num? value) {
    rawData["active_file"] = value;
  }


  
  num? get inactive_file {
    try {
      if (rawData["inactive_file"] is num == false){
        return null;
      }
      return rawData["inactive_file"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set inactive_file(num? value) {
    rawData["inactive_file"] = value;
  }


  
  num? get unevictable {
    try {
      if (rawData["unevictable"] is num == false){
        return null;
      }
      return rawData["unevictable"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set unevictable(num? value) {
    rawData["unevictable"] = value;
  }


  
  num? get mlocked {
    try {
      if (rawData["mlocked"] is num == false){
        return null;
      }
      return rawData["mlocked"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set mlocked(num? value) {
    rawData["mlocked"] = value;
  }


  
  num? get swap_total {
    try {
      if (rawData["swap_total"] is num == false){
        return null;
      }
      return rawData["swap_total"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set swap_total(num? value) {
    rawData["swap_total"] = value;
  }


  
  num? get swap_free {
    try {
      if (rawData["swap_free"] is num == false){
        return null;
      }
      return rawData["swap_free"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set swap_free(num? value) {
    rawData["swap_free"] = value;
  }


  
  num? get zswap {
    try {
      if (rawData["zswap"] is num == false){
        return null;
      }
      return rawData["zswap"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set zswap(num? value) {
    rawData["zswap"] = value;
  }


  
  num? get zswapped {
    try {
      if (rawData["zswapped"] is num == false){
        return null;
      }
      return rawData["zswapped"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set zswapped(num? value) {
    rawData["zswapped"] = value;
  }


  
  num? get dirty {
    try {
      if (rawData["dirty"] is num == false){
        return null;
      }
      return rawData["dirty"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set dirty(num? value) {
    rawData["dirty"] = value;
  }


  
  num? get writeback {
    try {
      if (rawData["writeback"] is num == false){
        return null;
      }
      return rawData["writeback"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set writeback(num? value) {
    rawData["writeback"] = value;
  }


  
  num? get anon_pages {
    try {
      if (rawData["anon_pages"] is num == false){
        return null;
      }
      return rawData["anon_pages"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set anon_pages(num? value) {
    rawData["anon_pages"] = value;
  }


  
  num? get mapped {
    try {
      if (rawData["mapped"] is num == false){
        return null;
      }
      return rawData["mapped"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set mapped(num? value) {
    rawData["mapped"] = value;
  }


  
  num? get shmem {
    try {
      if (rawData["shmem"] is num == false){
        return null;
      }
      return rawData["shmem"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set shmem(num? value) {
    rawData["shmem"] = value;
  }


  
  num? get k_reclaimable {
    try {
      if (rawData["k_reclaimable"] is num == false){
        return null;
      }
      return rawData["k_reclaimable"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set k_reclaimable(num? value) {
    rawData["k_reclaimable"] = value;
  }


  
  num? get slab {
    try {
      if (rawData["slab"] is num == false){
        return null;
      }
      return rawData["slab"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set slab(num? value) {
    rawData["slab"] = value;
  }


  
  num? get s_reclaimable {
    try {
      if (rawData["s_reclaimable"] is num == false){
        return null;
      }
      return rawData["s_reclaimable"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set s_reclaimable(num? value) {
    rawData["s_reclaimable"] = value;
  }


  
  num? get s_unreclaim {
    try {
      if (rawData["s_unreclaim"] is num == false){
        return null;
      }
      return rawData["s_unreclaim"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set s_unreclaim(num? value) {
    rawData["s_unreclaim"] = value;
  }


  
  num? get kernel_stack {
    try {
      if (rawData["kernel_stack"] is num == false){
        return null;
      }
      return rawData["kernel_stack"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set kernel_stack(num? value) {
    rawData["kernel_stack"] = value;
  }


  
  num? get page_tables {
    try {
      if (rawData["page_tables"] is num == false){
        return null;
      }
      return rawData["page_tables"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set page_tables(num? value) {
    rawData["page_tables"] = value;
  }


  
  num? get sec_page_tables {
    try {
      if (rawData["sec_page_tables"] is num == false){
        return null;
      }
      return rawData["sec_page_tables"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set sec_page_tables(num? value) {
    rawData["sec_page_tables"] = value;
  }


  
  num? get n_f_s_unstable {
    try {
      if (rawData["n_f_s_unstable"] is num == false){
        return null;
      }
      return rawData["n_f_s_unstable"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set n_f_s_unstable(num? value) {
    rawData["n_f_s_unstable"] = value;
  }


  
  num? get bounce {
    try {
      if (rawData["bounce"] is num == false){
        return null;
      }
      return rawData["bounce"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set bounce(num? value) {
    rawData["bounce"] = value;
  }


  
  num? get writeback_tmp {
    try {
      if (rawData["writeback_tmp"] is num == false){
        return null;
      }
      return rawData["writeback_tmp"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set writeback_tmp(num? value) {
    rawData["writeback_tmp"] = value;
  }


  
  num? get commit_limit {
    try {
      if (rawData["commit_limit"] is num == false){
        return null;
      }
      return rawData["commit_limit"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set commit_limit(num? value) {
    rawData["commit_limit"] = value;
  }


  
  num? get committed_a_s {
    try {
      if (rawData["committed_a_s"] is num == false){
        return null;
      }
      return rawData["committed_a_s"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set committed_a_s(num? value) {
    rawData["committed_a_s"] = value;
  }


  
  num? get vmalloc_total {
    try {
      if (rawData["vmalloc_total"] is num == false){
        return null;
      }
      return rawData["vmalloc_total"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set vmalloc_total(num? value) {
    rawData["vmalloc_total"] = value;
  }


  
  num? get vmalloc_used {
    try {
      if (rawData["vmalloc_used"] is num == false){
        return null;
      }
      return rawData["vmalloc_used"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set vmalloc_used(num? value) {
    rawData["vmalloc_used"] = value;
  }


  
  num? get vmalloc_chunk {
    try {
      if (rawData["vmalloc_chunk"] is num == false){
        return null;
      }
      return rawData["vmalloc_chunk"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set vmalloc_chunk(num? value) {
    rawData["vmalloc_chunk"] = value;
  }


  
  num? get percpu {
    try {
      if (rawData["percpu"] is num == false){
        return null;
      }
      return rawData["percpu"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set percpu(num? value) {
    rawData["percpu"] = value;
  }


  
  num? get hardware_corrupted {
    try {
      if (rawData["hardware_corrupted"] is num == false){
        return null;
      }
      return rawData["hardware_corrupted"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set hardware_corrupted(num? value) {
    rawData["hardware_corrupted"] = value;
  }


  
  num? get anon_huge_pages {
    try {
      if (rawData["anon_huge_pages"] is num == false){
        return null;
      }
      return rawData["anon_huge_pages"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set anon_huge_pages(num? value) {
    rawData["anon_huge_pages"] = value;
  }


  
  num? get shmem_huge_pages {
    try {
      if (rawData["shmem_huge_pages"] is num == false){
        return null;
      }
      return rawData["shmem_huge_pages"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set shmem_huge_pages(num? value) {
    rawData["shmem_huge_pages"] = value;
  }


  
  num? get shmem_pmd_mapped {
    try {
      if (rawData["shmem_pmd_mapped"] is num == false){
        return null;
      }
      return rawData["shmem_pmd_mapped"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set shmem_pmd_mapped(num? value) {
    rawData["shmem_pmd_mapped"] = value;
  }


  
  num? get file_huge_pages {
    try {
      if (rawData["file_huge_pages"] is num == false){
        return null;
      }
      return rawData["file_huge_pages"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set file_huge_pages(num? value) {
    rawData["file_huge_pages"] = value;
  }


  
  num? get file_pmd_mapped {
    try {
      if (rawData["file_pmd_mapped"] is num == false){
        return null;
      }
      return rawData["file_pmd_mapped"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set file_pmd_mapped(num? value) {
    rawData["file_pmd_mapped"] = value;
  }


  
  num? get unaccepted {
    try {
      if (rawData["unaccepted"] is num == false){
        return null;
      }
      return rawData["unaccepted"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set unaccepted(num? value) {
    rawData["unaccepted"] = value;
  }


  
  num? get huge_pages_total {
    try {
      if (rawData["huge_pages_total"] is num == false){
        return null;
      }
      return rawData["huge_pages_total"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set huge_pages_total(num? value) {
    rawData["huge_pages_total"] = value;
  }


  
  num? get huge_pages_free {
    try {
      if (rawData["huge_pages_free"] is num == false){
        return null;
      }
      return rawData["huge_pages_free"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set huge_pages_free(num? value) {
    rawData["huge_pages_free"] = value;
  }


  
  num? get huge_pages_rsvd {
    try {
      if (rawData["huge_pages_rsvd"] is num == false){
        return null;
      }
      return rawData["huge_pages_rsvd"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set huge_pages_rsvd(num? value) {
    rawData["huge_pages_rsvd"] = value;
  }


  
  num? get huge_pages_surp {
    try {
      if (rawData["huge_pages_surp"] is num == false){
        return null;
      }
      return rawData["huge_pages_surp"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set huge_pages_surp(num? value) {
    rawData["huge_pages_surp"] = value;
  }


  
  num? get hugepagesize {
    try {
      if (rawData["hugepagesize"] is num == false){
        return null;
      }
      return rawData["hugepagesize"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set hugepagesize(num? value) {
    rawData["hugepagesize"] = value;
  }


  
  num? get hugetlb {
    try {
      if (rawData["hugetlb"] is num == false){
        return null;
      }
      return rawData["hugetlb"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set hugetlb(num? value) {
    rawData["hugetlb"] = value;
  }


  
  num? get direct_map4k {
    try {
      if (rawData["direct_map4k"] is num == false){
        return null;
      }
      return rawData["direct_map4k"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set direct_map4k(num? value) {
    rawData["direct_map4k"] = value;
  }


  
  num? get direct_map2_m {
    try {
      if (rawData["direct_map2_m"] is num == false){
        return null;
      }
      return rawData["direct_map2_m"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set direct_map2_m(num? value) {
    rawData["direct_map2_m"] = value;
  }


  
  num? get direct_map1_g {
    try {
      if (rawData["direct_map1_g"] is num == false){
        return null;
      }
      return rawData["direct_map1_g"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set direct_map1_g(num? value) {
    rawData["direct_map1_g"] = value;
  }


  
  static MemoryData create({

    String special_type = "memoryData",
    num? mem_total,
    num? mem_free,
    num? mem_available,
    num? buffers,
    num? cached,
    num? swap_cached,
    num? active,
    num? inactive,
    num? active_anon,
    num? inactive_anon,
    num? active_file,
    num? inactive_file,
    num? unevictable,
    num? mlocked,
    num? swap_total,
    num? swap_free,
    num? zswap,
    num? zswapped,
    num? dirty,
    num? writeback,
    num? anon_pages,
    num? mapped,
    num? shmem,
    num? k_reclaimable,
    num? slab,
    num? s_reclaimable,
    num? s_unreclaim,
    num? kernel_stack,
    num? page_tables,
    num? sec_page_tables,
    num? n_f_s_unstable,
    num? bounce,
    num? writeback_tmp,
    num? commit_limit,
    num? committed_a_s,
    num? vmalloc_total,
    num? vmalloc_used,
    num? vmalloc_chunk,
    num? percpu,
    num? hardware_corrupted,
    num? anon_huge_pages,
    num? shmem_huge_pages,
    num? shmem_pmd_mapped,
    num? file_huge_pages,
    num? file_pmd_mapped,
    num? unaccepted,
    num? huge_pages_total,
    num? huge_pages_free,
    num? huge_pages_rsvd,
    num? huge_pages_surp,
    num? hugepagesize,
    num? hugetlb,
    num? direct_map4k,
    num? direct_map2_m,
    num? direct_map1_g,
})  {
    // MemoryData memoryData = MemoryData({
Map memoryData_data_create_json = {
  
      "@type": special_type,
      "mem_total": mem_total,
      "mem_free": mem_free,
      "mem_available": mem_available,
      "buffers": buffers,
      "cached": cached,
      "swap_cached": swap_cached,
      "active": active,
      "inactive": inactive,
      "active_anon": active_anon,
      "inactive_anon": inactive_anon,
      "active_file": active_file,
      "inactive_file": inactive_file,
      "unevictable": unevictable,
      "mlocked": mlocked,
      "swap_total": swap_total,
      "swap_free": swap_free,
      "zswap": zswap,
      "zswapped": zswapped,
      "dirty": dirty,
      "writeback": writeback,
      "anon_pages": anon_pages,
      "mapped": mapped,
      "shmem": shmem,
      "k_reclaimable": k_reclaimable,
      "slab": slab,
      "s_reclaimable": s_reclaimable,
      "s_unreclaim": s_unreclaim,
      "kernel_stack": kernel_stack,
      "page_tables": page_tables,
      "sec_page_tables": sec_page_tables,
      "n_f_s_unstable": n_f_s_unstable,
      "bounce": bounce,
      "writeback_tmp": writeback_tmp,
      "commit_limit": commit_limit,
      "committed_a_s": committed_a_s,
      "vmalloc_total": vmalloc_total,
      "vmalloc_used": vmalloc_used,
      "vmalloc_chunk": vmalloc_chunk,
      "percpu": percpu,
      "hardware_corrupted": hardware_corrupted,
      "anon_huge_pages": anon_huge_pages,
      "shmem_huge_pages": shmem_huge_pages,
      "shmem_pmd_mapped": shmem_pmd_mapped,
      "file_huge_pages": file_huge_pages,
      "file_pmd_mapped": file_pmd_mapped,
      "unaccepted": unaccepted,
      "huge_pages_total": huge_pages_total,
      "huge_pages_free": huge_pages_free,
      "huge_pages_rsvd": huge_pages_rsvd,
      "huge_pages_surp": huge_pages_surp,
      "hugepagesize": hugepagesize,
      "hugetlb": hugetlb,
      "direct_map4k": direct_map4k,
      "direct_map2_m": direct_map2_m,
      "direct_map1_g": direct_map1_g,


};


          memoryData_data_create_json.removeWhere((key, value) => value == null);
MemoryData memoryData_data_create = MemoryData(memoryData_data_create_json);

return memoryData_data_create;



      }
}