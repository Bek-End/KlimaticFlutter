import 'package:http/http.dart' as http;
import 'dart:convert';

import 'location.dart';

class NetworkingHelper {
  final String url;
  double latitude, longitude;
  static const apiKey = "819fa3e7a0fca8da364124c968e509f6";
  NetworkingHelper(this.url);

  Future getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
