import 'package:general_lib/general_lib.dart';
import 'package:system_info_fetch/system_info_fetch.dart';

void main(List<String> args) {
  SystemInfoFetch.realtimeToJson().listen((event) {
    event.printPretty();
  });
}
