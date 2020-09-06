import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'high_school_page.dart';
import 'highschools.dart';

class HighSchoolsSearchPage extends StatefulWidget {
  @override
  HighSchoolsSearchPageState createState() => HighSchoolsSearchPageState();
}

class HighSchoolsSearchPageState extends State<HighSchoolsSearchPage> {
  final TextEditingController _controller = TextEditingController();
  List<Widget> _schools;

  @override
  void initState() {
    super.initState();
    this._updateResults();
  }

  @override
  void dispose() {
    this._controller.dispose();
    super.dispose();
  }

  void _updateResults() {
    this._schools = null;
    final results = <Widget>[];
    for (final school in [postova, dopravna, srobarova]) {
      if (school.name.toLowerCase().contains(this._controller.text.toLowerCase())) {
        results.add(Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.5, horizontal: 10.0),
          child: Card(
            elevation: 5.0,
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => HighSchoolPage(school: school))),
              child: Container(
                height: 100,
                child: Center(
                  child: Text(school.name),
                ),
              ),
            ),
          ),
        ));
      }
    }
    this.setState(() => this._schools = results);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Material(
              elevation: 5.0,
              child: TextField(
                controller: this._controller,
                decoration: InputDecoration(
                  hintText: "Vyhľadať",
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Theme.of(context).accentColor),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
                onChanged: (value) => this._updateResults(),
                onSubmitted: (value) => this._updateResults(),
              ),
            ),
          ),
          this._schools != null
              ? Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: this._schools,
                    ),
                  ),
                )
              : CircularProgressIndicator(),
        ],
      ),
    );
  }
}
