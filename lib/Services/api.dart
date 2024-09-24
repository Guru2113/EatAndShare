import 'dart:convert';

import 'package:http/http.dart' as http;

class api {
  static var baseurl = "http://192.168.68.30/api/";

  static signUp(Map data) async {
    var url = Uri.parse(baseurl + "signUp");

    final res = await http.post(url, body: data);
    try {
      if (res.statusCode == 200) {
        var data = jsonDecode(res.body.toString());
        print(data);
      } else {
        print("failed to connect");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  static getData() async {
    var url = Uri.parse(baseurl + "getData");

    final res = await http.get(url);
    try {
      if (res.statusCode == 200) {
        var data = jsonDecode(res.body.toString());
        print(data);
      } else {
        print("failed to connect");
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
