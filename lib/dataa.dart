import 'dart:convert';

import 'package:http/http.dart' as http;

class GetData {
  static Future getEchangeData() async {
    Uri url = Uri.parse("https://nbu.uz/uz/exchange-rates/json/");
    dynamic response = await http.get(url);
    return jsonDecode(response.body);
  }
}
