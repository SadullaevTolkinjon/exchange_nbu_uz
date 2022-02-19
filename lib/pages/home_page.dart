import 'package:exchangenbu/pages/asosiy_page.dart';
import 'package:exchangenbu/service/user_service.dart';

import 'package:flutter/material.dart';
import 'package:exchangenbu/model/user_model.dart';
import 'package:exchangenbu/data/data_base.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currnetIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(elevation: 0),
            onPressed: () {
              Navigator.pushNamed(context, "/convertor");
            },
            child: Row(
              children: [Text("Convert"), Icon(Icons.arrow_forward_ios)],
            ),
          ),
        ],
        leading: CircleAvatar(
          radius: 18,
          backgroundImage: NetworkImage(
              "https://w7.pngwing.com/pngs/228/740/png-transparent-flag-of-uzbekistan-computer-icons-flag-miscellaneous-flag-grass-thumbnail.png"),
        ),
        title: Text("Valyuta kurslari"),
      ),
      body: Center(
          child: FutureBuilder(
        future: ServiceEchange.getExchange(),
        builder: (context, AsyncSnapshot<List<GetExchanges>> snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Center(
              child: Text("Xatoo bor brat"),
            );
          } else {
            return ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                        rasm[index].toString(),
                      ),
                    ),
                    title: Text(snapshot.data![index].title.toString()),
                    subtitle: Text(snapshot.data![index].code.toString()),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.pushNamed(context, "/currency", arguments: [
                        rasm[index],
                        snapshot.data![index].title,
                        snapshot.data![index].code,
                        snapshot.data![index].cbPrice,
                        snapshot.data![index].date,
                        snapshot.data![index].nbuBuyPrice,
                        snapshot.data![index].nbuCellPrice
                      ]);
                    },
                  ),
                );
              },
              itemCount: snapshot.data!.length,
            );
          }
        },
      )),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currnetIndex,
        onTap: (val) {
          setState(() {
            _currnetIndex = val;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.money), label: "Convertor")
        ],
      ),
    );
  }
}
