import 'dart:convert';
import 'dart:io';

import 'package:femmespot/data/exceptions.dart';
import 'package:femmespot/data/urls.dart';
import 'package:femmespot/res/toastmessage.dart';
import 'package:http/http.dart' as http;

class PostApi {
  Future<dynamic> postApi(var data, String url) async {
    try {
      var response = await http.post(Uri.parse(url), body: data);
      UserUrls.requestedData = jsonDecode(response.body.toString());
      print('response${UserUrls.requestedData.toString()}');
    } on SocketException {
      return InternetException();
    } catch (e) {
      return ApiStatusException(e.toString());
    }
  }

  Future<dynamic> post(var data, String url) async {
    try {
      final response = await http.post(Uri.parse(url), body: data);
      var d = jsonDecode(response.body.toString());
      print('rr${d.toString()}');
      Utils.toastMessage(d.toString());
    } catch (e) {
      print('ss${e.toString()}');
    }
  }
}
