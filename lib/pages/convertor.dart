import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:exchangenbu/dataa.dart';

class Convertor extends StatefulWidget {
  const Convertor({Key? key}) : super(key: key);

  @override
  _ConvertorState createState() => _ConvertorState();
}

class _ConvertorState extends State<Convertor> {
  var _texController = TextEditingController();
  var _texController2 = TextEditingController();
  List dataConvert = [];
  String? convertdata;
  var convertdata2;
  var _dropvalue1 = "aud";
  var _dropValue2 = "AUD";
  var natija;
  double? son;
  double? son2;
  double? son3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Exchange Convertor",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Container(
                  height: 50,
                  width: 250,
                  child: DropdownButton(
                      value: _dropvalue1,
                      items: [
                        DropdownMenuItem(
                          child: Text("BAA dirhami"),
                          value: "aed",
                        ),
                        DropdownMenuItem(
                          child: Text("Avstraliya dollari"),
                          value: "aud",
                        ),
                        DropdownMenuItem(
                          child: Text("Kanada dollari"),
                          value: "cad",
                        ),
                        DropdownMenuItem(
                          child: Text("Shveytsariya franki"),
                          value: "chf",
                        ),
                        DropdownMenuItem(
                          child: Text("Xitoy yuani"),
                          value: "cyn",
                        ),
                        DropdownMenuItem(
                          child: Text("Daniya kronasi"),
                          value: "dkk",
                        ),
                        DropdownMenuItem(
                          child: Text("Misr funti"),
                          value: "egp",
                        ),
                        DropdownMenuItem(
                          child: Text("Yevro"),
                          value: "eur",
                        ),
                        DropdownMenuItem(
                          child: Text("Angliya funt sterlingi"),
                          value: "gbp",
                        ),
                        DropdownMenuItem(
                          child: Text("Islandiya kronasi"),
                          value: "isk",
                        ),
                        DropdownMenuItem(
                          child: Text("Yaponiya iyenasi"),
                          value: "jpy",
                        ),
                        DropdownMenuItem(
                          child: Text("Koreya respublikasi voni"),
                          value: "krw",
                        ),
                        DropdownMenuItem(
                          child: Text("Quvayt dinori"),
                          value: "kwd",
                        ),
                        DropdownMenuItem(
                          child: Text("Qozog‘iston tengesi"),
                          value: "kzt",
                        ),
                        DropdownMenuItem(
                          child: Text("Livan funti"),
                          value: "lbp",
                        ),
                        DropdownMenuItem(
                          child: Text("Malayziya ringgiti"),
                          value: "myr",
                        ),
                        DropdownMenuItem(
                          child: Text("Norvegiya kronasi"),
                          value: "nok",
                        ),
                        DropdownMenuItem(
                          child: Text("Polsha zlotiysi"),
                          value: "pln",
                        ),
                        DropdownMenuItem(
                          child: Text("Rossiya rubli"),
                          value: "rub",
                        ),
                        DropdownMenuItem(
                          child: Text("Shvetsiya kronasi"),
                          value: "sek",
                        ),
                        DropdownMenuItem(
                          child: Text("Singapur dollari"),
                          value: "sgd",
                        ),
                        DropdownMenuItem(
                          child: Text("Turkiya lirasi"),
                          value: "try",
                        ),
                        DropdownMenuItem(
                          child: Text("Ukraina grivnasi"),
                          value: "uah",
                        ),
                        DropdownMenuItem(
                          child: Text("AQSh dollari"),
                          value: "usd",
                        ),
                      ],
                      onChanged: (val) {
                        convertdata = val.toString();
                        setState(() {
                          _dropvalue1 = val.toString();
                        });
                      }),
                )),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 70.0),
                    child: Container(
                      height: 100,
                      width: 200,
                      child: TextFormField(
                        controller: _texController,
                        onChanged: (val) {
                          son = double.parse(_texController.text);
                        },
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: "From",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: 250,
              child: DropdownButton(
                  value: _dropValue2,
                  items: [
                    DropdownMenuItem(
                      child: Text("BAA dirhami"),
                      value: "AED",
                    ),
                    DropdownMenuItem(
                      child: Text("Avstraliya dollari"),
                      value: "AUD",
                    ),
                    DropdownMenuItem(
                      child: Text("Kanada dollari"),
                      value: "CAD",
                    ),
                    DropdownMenuItem(
                      child: Text("Shveytsariya franki"),
                      value: "CHF",
                    ),
                    DropdownMenuItem(
                      child: Text("Xitoy yuani"),
                      value: "CNY",
                    ),
                    DropdownMenuItem(
                      child: Text("Daniya kronasi"),
                      value: "DKK",
                    ),
                    DropdownMenuItem(
                      child: Text("Misr funti"),
                      value: "EGP",
                    ),
                    DropdownMenuItem(
                      child: Text("Yevro"),
                      value: "EUR",
                    ),
                    DropdownMenuItem(
                      child: Text("Angliya funt sterlingi"),
                      value: "GBP",
                    ),
                    DropdownMenuItem(
                      child: Text("Islandiya kronasi"),
                      value: "ISK",
                    ),
                    DropdownMenuItem(
                      child: Text("Yaponiya iyenasi"),
                      value: "JPY",
                    ),
                    DropdownMenuItem(
                      child: Text("Koreya respublikasi voni"),
                      value: "KRW",
                    ),
                    DropdownMenuItem(
                      child: Text("Quvayt dinori"),
                      value: "KWD",
                    ),
                    DropdownMenuItem(
                      child: Text("Qozog‘iston tengesi"),
                      value: "KZT",
                    ),
                    DropdownMenuItem(
                      child: Text("Livan funti"),
                      value: "LBP",
                    ),
                    DropdownMenuItem(
                      child: Text("Malayziya ringgiti"),
                      value: "MYR",
                    ),
                    DropdownMenuItem(
                      child: Text("Norvegiya kronasi"),
                      value: "NOK",
                    ),
                    DropdownMenuItem(
                      child: Text("Polsha zlotiysi"),
                      value: "PLN",
                    ),
                    DropdownMenuItem(
                      child: Text("Rossiya rubli"),
                      value: "RUB",
                    ),
                    DropdownMenuItem(
                      child: Text("Shvetsiya kronasi"),
                      value: "SEK",
                    ),
                    DropdownMenuItem(
                      child: Text("Singapur dollari"),
                      value: "SGD",
                    ),
                    DropdownMenuItem(
                      child: Text("Turkiya lirasi"),
                      value: "TRY",
                    ),
                    DropdownMenuItem(
                      child: Text("Ukraina grivnasi"),
                      value: "UAH",
                    ),
                    DropdownMenuItem(
                      child: Text("AQSh dollari"),
                      value: "USD",
                    ),
                  ],
                  onChanged: (value) {
                    convertdata2 = value;
                    setState(() {
                      _dropValue2 = value.toString();
                    });
                  }),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 70.0),
                    child: Container(
                      height: 100,
                      width: 200,
                      child: TextFormField(
                        onChanged: (val) {},
                        controller: _texController2,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: "To",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(minimumSize: Size(300, 50)),
              onPressed: () async {
                dataConvert = await GetData.getEchangeData();
                for (var data in dataConvert) {
                  if (data["code"] == convertdata!.toUpperCase()) {
                    son2 = double.parse(data["cb_price"]);
                  }
                }
                for (var data in dataConvert) {
                  if (data["code"] == convertdata2) {
                    son3 = double.parse(data["cb_price"]);
                  }
                }

                natija = (son! * son2!) / son3!;

                _texController2.text = natija.toString();
                _texController.clear();
              },
              child: Text(
                "Calculate",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}
