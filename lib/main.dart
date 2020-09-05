import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 4.0,
                  horizontal: MediaQuery.of(context).size.width / 7),
              child: Card(
                elevation: 5.0,
                child: Container(
                  height: 100,
                  child: Center(
                    child: Text("Stredné školy"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 4.0,
                  horizontal: MediaQuery.of(context).size.width / 7),
              child: Card(
                elevation: 5.0,
                child: Container(
                  height: 100,
                  child: Center(
                    child: Text("Vysoké školy"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}