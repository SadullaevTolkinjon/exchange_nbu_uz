import 'dart:convert';
import 'package:exchangenbu/model/user_model.dart';
import 'package:http/http.dart' as http;

class ServiceEchange {
  static Future<List<GetExchanges>> getExchange() async {
    Uri url = Uri.parse("https://nbu.uz/uz/exchange-rates/json/");
    dynamic response = await http.get(url);
  
    return (jsonDecode(response.body) as List)
        .map((e) => GetExchanges.fromJson(e))
        .toList();
  }
}
