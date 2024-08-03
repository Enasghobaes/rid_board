import 'package:dio/dio.dart';
import 'package:rid_board/core/config/get_it_config.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HeaderConfig {
  static Options getHeader({useToken = true}) {
    if (useToken) {
      return Options(
        headers: {
          "accept": "*/*",
          "Authorization":
              "eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIwOTQ5NzU4NTkxIiwiaWF0IjoxNzIyNTkyMTk4LCJleHAiOjE3MjI2Nzg1OTh9.X6t4mDMtGD0SGCgB88lub6A2_KGygERtbOb62o9PQWg"
          // "Bearer ${(core.get<SharedPreferences>().getString('token'))}"
        },
      );
    } else {
      return Options(
        headers: {
          "Content-Type": "application/json",
        },
      );
    }
  }
}
