import 'dart:convert';
import 'dart:io';

import 'package:femmespot/data/exceptions.dart';
import 'package:http/http.dart' as http;

class PatchApi {
  Future<dynamic> patchApi(var data, String url) async {
    try {
      var response = await http.patch(Uri.parse(url),
          headers: {
            'Content-Type': 'application/json',
          },
          body: jsonEncode(data));
    } on SocketException {
      return InternetException();
    } catch (e) {
      return ApiStatusException(e.toString());
    }
  }
}
