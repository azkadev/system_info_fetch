import 'dart:isolate';

import 'package:general_lib/file_size/file_size.dart';
import 'package:system_info_fetch/system_info_fetch.dart';
import 'package:universal_io/io.dart';

void main(List<String> args) {
  ReceivePort receivePort = ReceivePort();
  Isolate.spawn((message) async {
    int total_count = 0;
    while (true) {
      await Future.delayed(Duration(microseconds: 1));
      total_count++;
      bool is_clear = (Platform.environment["clear"] == "true");
      final Map anu = {
        "is_clear": is_clear,
        "ram_usage_by_this_program": FileSize.filesize(
          size: SystemInfoFetch.get_ram_usage_by_pid(
            pidProcces: pid,
          ),
        ),
      };
      message.send(anu);
      if (is_clear) {
        anu.clear();
      }
    }
  }, receivePort.sendPort);

  receivePort.listen((message) {
    print(message);
  });
  print("start");
}
