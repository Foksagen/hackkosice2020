import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hackkosice2020/unis.dart';
import 'package:url_launcher/url_launcher.dart';

class UniversityPage extends StatefulWidget {
  final Uni school;

  const UniversityPage({Key key, this.school}) : super(key: key);

  @override
  UniversityPageState createState() => UniversityPageState();
}

class UniversityPageState extends State<UniversityPage>
    with TickerProviderStateMixin {
  TabController _tabController;
  int _tabIndex = 0;

  @override
  void initState() {
    super.initState();
    this._tabController = TabController(length: 4, vsync: this);
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
                        Padding(
                          padding: const EdgeInsets.only(top: 240.0),
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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0,
                                  top: 10.0,
                                  right: 2.5,
                                  bottom: 10.0),
                              child: Icon(
                                Icons.people,
                                size: 35,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 2.5,
                                  top: 10.0,
                                  right: 10.0,
                                  bottom: 10.0),
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
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0,
                                  top: 10.0,
                                  right: 10.0,
                                  bottom: 2.5),
                              child: IntrinsicHeight(
                                child: IntrinsicWidth(
                                  child: Stack(
                                    children: [
                                      CircularProgressIndicator(
                                        value:
                                            widget.school.acceptanceRate / 100,
                                        backgroundColor: Colors.grey[350],
                                      ),
                                      Center(
                                        child: Text(
                                          "${widget.school.acceptanceRate}%",
                                          style: const TextStyle(
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0,
                                  top: 2.5,
                                  right: 10.0,
                                  bottom: 10.0),
                              child: Text(
                                "Miera prijatia",
                                style: const TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
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
