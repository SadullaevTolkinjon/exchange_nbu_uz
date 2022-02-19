import 'package:exchangenbu/pages/convertor.dart';
import 'package:exchangenbu/pages/currency_page.dart';
import 'package:exchangenbu/pages/home_page.dart';
import 'package:flutter/material.dart';

class RouterGenerator {
  static genrateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => const HomePage());
      case "/currency":
        return MaterialPageRoute(builder: (context) => CurrencyPage(data: args,));
         case "/convertor":
        return MaterialPageRoute(builder: (context) => Convertor());
    }
  }
}
