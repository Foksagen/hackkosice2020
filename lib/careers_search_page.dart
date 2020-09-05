import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackkosice2020/courses.dart';

class CareersSearchPage extends StatefulWidget {
  @override
  CareersSearchPageState createState() => CareersSearchPageState();
}

class CareersSearchPageState extends State<CareersSearchPage> {
  List<Widget> getCareers(String sub1, String sub2) {
    List<Widget> result;

    for (final x in careers.entries) {
      if (x.value.contains(sub1) || x.value.contains(sub2)) {
        result.add(Card(
            elevation: 5.0,
            child: InkWell(
                child:
                    Container(height: 100, width: 100, child: Text(x.key)))));
      }
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {}
}
