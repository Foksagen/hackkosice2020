import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HighSchoolPage extends StatefulWidget {
  HighSchoolPage({Key key}) : super(key: key);

  @override
  HighSchoolPageState createState() => HighSchoolPageState();
}

class HighSchoolPageState extends State<HighSchoolPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 150,
            child: Image.asset("TODO"),
          ),
          Text(
            "Name",
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.location_on,
                size: 14,
              ),
              Text(
                "Location",
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
