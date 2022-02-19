import 'package:flutter/material.dart';

class CurrencyPage extends StatefulWidget {
  var data;
  CurrencyPage({Key? key, this.data}) : super(key: key);

  @override
  _CurrencyPageState createState() => _CurrencyPageState();
}

class _CurrencyPageState extends State<CurrencyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.blue.shade100,
        title: Text(
          widget.data[1].toString(),
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 150, right: 150, top: 10),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                widget.data[0].toString(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(),
            child: Container(
              height: 200,
              width: 320,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    widget.data[1].toString(),
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    widget.data[2].toString(),
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "Price: ${widget.data[3]}   UZS",
                    style: TextStyle(fontSize: 18),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Buy Price: ${widget.data[5]}"),
                      Text("Cell Price: ${widget.data[6]}")
                    ],
                  ),
                  Text("Date: ${widget.data[4]}")
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
