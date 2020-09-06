import 'package:flutter/material.dart';

import 'package:hackkosice2020/highschool_search_page.dart';
import 'package:hackkosice2020/ui.dart';
import 'package:hackkosice2020/university_search_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tokuho Schools',
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
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                "Vitajte",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: "Nunito",
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "Vyberte si typ škôl",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 25,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 7, top: 50.0, right: MediaQuery.of(context).size.width / 7, bottom: 4.0),
                child: createCard(
                  "Stredné školy",
                  Text(
                    "Lorem ipsum",
                    textAlign: TextAlign.start,
                    style: descStyle,
                  ),
                  "https://r-cf.bstatic.com/images/hotel/max1024x768/116/116281457.jpg",
                      () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => HighSchoolsSearchPage())),
                  biggerImage: true,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: MediaQuery.of(context).size.width / 7),
                child: createCard(
                  "Vysoké školy",
                  Text(
                    "Lorem ipsum",
                    textAlign: TextAlign.start,
                    style: descStyle,
                  ),
                  "https://r-cf.bstatic.com/images/hotel/max1024x768/116/116281457.jpg",
                      () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => UniversitySearchPage())),
                  biggerImage: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
