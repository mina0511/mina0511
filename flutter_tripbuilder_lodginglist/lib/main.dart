import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Flutter List View Tutorial"),
      ),
      body: getListView(),
    ),
  ));
}

Widget getListView() {
  var listview = ListView(children: [
    lodgingcard("70,000원", "보안요원있음", "유흥시설인접", "24시간프론트데스크"),
    lodgingcard("55,000원", "보안요원있음", "유흥시설인접", "  "),
    lodgingcard("60,000원", "보안요원있음", "유흥시설인접", "24시간프론트데스크"),
    lodgingcard("65,000원", "보안요원있음", "유흥시설인접", "  "),
    lodgingcard("45,000원", "보안요원있음", "유흥시설인접", "24시간프론트데스크"),
  ]);
  return listview;
}

Widget lodgingcard(
  String price,
  String text1,
  String text2,
  String text3,
) {
  return Container(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.network(
                  'https://www.urbanbrush.net/web/wp-content/uploads/edd/2018/01/web-20180113082720872081.png',
                  width: 80,
                  height: 80),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(price,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                    Text(text1,
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 12)),
                    Text(text2,
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 11))
                  ],
                ),
              ),
              Text(text3,
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 2)),
            ],
          ),
        ),
        Container(
          width: 500,
          height: 0.5,
          color: Colors.grey,
        )
      ],
    ),
  );
}
