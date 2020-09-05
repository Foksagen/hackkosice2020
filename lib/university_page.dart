import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UniversityPage extends StatefulWidget {
  const UniversityPage({Key key}) : super(key: key);

  @override
  UniversityPageState createState() => UniversityPageState();
}

class UniversityPageState extends State<UniversityPage> with TickerProviderStateMixin {

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
              fontSize: 30,
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
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
          TabBar(
            controller: this._tabController,
            tabs: [
              Tab(
                icon: Icon(Icons.info_outline),
              ),
              Tab(
                icon: Icon(Icons.assignment),
              ),
              Tab(
                icon: Icon(Icons.school),
              ),
              Tab(
                icon: Icon(Icons.tag_faces),
              ),
            ],
          ),
        ]..add([][this._tabIndex]),
      ),
    );
  }
}
