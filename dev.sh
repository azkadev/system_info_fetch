#!/bin/sh
# dart run --observe --enable-asserts /home/galaxeus/Documents/galaxeus/app/general_machine_system_services/library/general_api_server/bin/general_api_dev.dart
dart run --enable-asserts --disable-service-auth-codes --observe=4910:0.0.0.0 --enable-vm-service=4910:0.0.0.0 bin/cpkdp.dart