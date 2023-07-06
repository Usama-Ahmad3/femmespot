import 'dart:convert';
import 'dart:io';

import 'package:femmespot/data/exceptions.dart';
import 'package:femmespot/data/models/world.dart';
import 'package:http/http.dart' as http;

class GetApiResponse {
  Future<dynamic> getResponse(String url) async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        return WorldSTateModels.fromJson(data);
      }
    } on SocketException {
      return InternetException();
    } catch (e) {
      return ApiStatusException(e.toString());
    }
  }
}
