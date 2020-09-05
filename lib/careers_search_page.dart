import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackkosice2020/courses.dart';

List<String> subjects = [
  "Biológia",
  "Chémia",
  "Fyzika",
  "Informatika",
  "Geografia",
  "Občianska náuka",
  "Dejepis",
  "Slovenský jazyk a literatúra",
  "Nemecký jazyk",
  "Anglický jazyk",
  "Ruský jazyk",
  "Francúzsky jazyk",
  "Umenie a kultúra",
];

class CareersSearchPage extends StatefulWidget {
  @override
  CareersSearchPageState createState() => CareersSearchPageState();
}

class CareersSearchPageState extends State<CareersSearchPage> {
  var _subject1;
  var _subject2;

  List<Widget> _careers;

  @override
  void initState() {
    super.initState();
    this._updateCareers();
  }

  void _updateCareers() {
    this._careers = null;
    final results = <Widget>[];

    for (final x in careers.entries) {
      if ((this._subject1 == null && this._subject2 == null) ||
          (x.value.contains(this._subject1) ||
              x.value.contains(this._subject2))) {
        results.add(Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.5, horizontal: 10.0),
          child: Card(
            elevation: 5.0,
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 100,
                child: Center(
                  child: Text(x.key),
                ),
              ),
            ),
          ),
        ));
      }
    }
    this.setState(() => this._careers = results);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: DropdownButton<String>(
                    value: this._subject1,
                    icon: Icon(Icons.arrow_downward),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 2,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        this._subject1 = newValue;
                        this._updateCareers();
                      });
                    },
                    items:
                        subjects.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: DropdownButton<String>(
                    value: this._subject2,
                    icon: Icon(Icons.arrow_downward),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 2,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        this._subject2 = newValue;
                        this._updateCareers();
                      });
                    },
                    items:
                        subjects.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: this._careers != null
                ? SingleChildScrollView(
                    child: Column(
                      children: this._careers,
                    ),
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  ),
          ),
        ],
      ),
    );
  }
}
