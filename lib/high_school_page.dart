import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackkosice2020/highschools.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:hackkosice2020/ui.dart';

class HighSchoolPage extends StatefulWidget {
  final HighSchool school;

  HighSchoolPage({Key key, this.school}) : super(key: key);

  @override
  HighSchoolPageState createState() => HighSchoolPageState();
}

class HighSchoolPageState extends State<HighSchoolPage>
    with TickerProviderStateMixin {
  TabController _tabController;
  int _tabIndex = 0;

  @override
  void initState() {
    super.initState();
    this._tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    this._tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 410.0,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              flexibleSpace: FlexibleSpaceBar(
                background: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0)),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              alignment: FractionalOffset.bottomCenter,
                              image: NetworkImage(widget.school.picture),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 230.0),
                            child: Container(
                              padding: const EdgeInsets.only(
                                  left: 20.0, top: 10.0, right: 20.0),
                              decoration: BoxDecoration(
                                  color:
                                  Theme.of(context).scaffoldBackgroundColor,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                              child: Text(
                                widget.school.name,
                                style: const TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 20.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            size: 14,
                            color: Color.fromRGBO(30, 132, 127, 1.0),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: Text(
                              widget.school.contact[0],
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, top: 10.0, right: 2.5, bottom: 10.0),
                          child: Icon(
                            Icons.people,
                            size: 35,
                            color: Color.fromRGBO(30, 132, 127, 1.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 2.5, top: 10.0, right: 20.0, bottom: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.school.students.toString(),
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                "študentov",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverFillRemaining(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TabBar(
                      indicatorColor: Color.fromRGBO(30, 132, 127, 1.0),
                      onTap: (index) =>
                          this.setState(() => this._tabIndex = index),
                      controller: this._tabController,
                      tabs: [
                        Tab(
                          icon: Icon(
                            Icons.info_outline,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        Tab(
                          icon: Icon(
                            Icons.assignment,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        Tab(
                          icon: Icon(
                            Icons.school,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        Tab(
                          icon: Icon(
                            Icons.tag_faces,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ],
                    )
                  ]..add(Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Informácie",
                              style: const TextStyle(
                                fontSize: 25.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                widget.school.info,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Štúdium",
                                style: const TextStyle(
                                  fontSize: 25.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0, bottom: 10.0),
                              child: Column(
                                children: [
                                  Text("Vyskúšajte si cvičné testy"),
                                  InkWell(
                                    child: new Text("Test MAT"),
                                    onTap: () =>
                                        launch(widget.school.practiceTests[0]),
                                  ),
                                  InkWell(
                                    child: new Text("Test SJL"),
                                    onTap: () =>
                                        launch(widget.school.practiceTests[1]),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Študentský život",
                                style: const TextStyle(
                                  fontSize: 25.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Poloha a kontakt",
                                style: const TextStyle(
                                  fontSize: 25.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.location_on,
                                        size: 14,
                                        color: Colors.grey,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 4.0),
                                        child: Text(
                                          widget.school.contact[0],
                                          textAlign: TextAlign.start,
                                          style: descStyle,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.local_phone,
                                        size: 14,
                                        color: Colors.grey,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 4.0),
                                        child: Text(
                                          widget.school.contact[1],
                                          textAlign: TextAlign.start,
                                          style: descStyle,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.email,
                                        size: 14,
                                        color: Colors.grey,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 4.0),
                                        child: Text(
                                          widget.school.contact[2],
                                          textAlign: TextAlign.start,
                                          style: descStyle,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.person_pin,
                                        size: 14,
                                        color: Colors.grey,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 4.0),
                                        child: Text(
                                          widget.school.contact[3],
                                          textAlign: TextAlign.start,
                                          style: descStyle,
                                        ),
                                      ),
                                    ],
                                  ),
                                ]
                              )
                            ),
                          ],
                        ),
                      ][this._tabIndex],
                    )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
