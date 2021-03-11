import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

var color1 = Color(0xff32a05f);
var colordark = Color(0xff279152);
var cactus =
    "https://st2.myideasoft.com/idea/en/78/myassets/products/408/yapay-kaktus-agaci-80-cm-1.jpg?revision=1562293869";

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colordark,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.grey,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Cactus(),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "Water",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Season",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      cardDetail(context, "200", "ml", "once a month"),
                      cardDetail(context, "50", "°C", "Summer"),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container cardDetail(
      BuildContext context, String name, String what, String when) {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width / 2 - 50,
      decoration: BoxDecoration(
        color: color1,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 5),
              Text(
                what,
                style: TextStyle(
                  color: Colors.white70,
                ),
              )
            ],
          ),
          Text(
            when,
            style: TextStyle(
              color: Colors.white70,
            ),
          )
        ],
      ),
    );
  }

  Expanded Cactus() {
    return Expanded(
      flex: 3,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(80),
            bottomRight: Radius.circular(80),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 400,
                child: Text(
                  "Cactus Watering Times",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 0.0),
                    child: FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: color1,
                      child: Icon(Icons.add),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    alignment: Alignment.bottomCenter,
                    width: 230,
                    height: 300,
                    child: Image.network(
                      cactus,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                    width: 10.0,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
