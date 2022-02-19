import 'package:flutter/material.dart';
import 'package:exchangenbu/service/user_service.dart';

import 'package:exchangenbu/model/user_model.dart';
import 'package:exchangenbu/data/data_base.dart';

class AsosiyPage extends StatefulWidget {
  const AsosiyPage({Key? key}) : super(key: key);

  @override
  _AsosiyPageState createState() => _AsosiyPageState();
}

class _AsosiyPageState extends State<AsosiyPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
         
        ),
      ]
    );
  }
}
