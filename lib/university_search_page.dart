import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'careers_search_page.dart';
import 'university_page.dart';
import 'unis.dart';

class UniversitySearchPage extends StatefulWidget {
  @override
  UniversitySearchPageState createState() => UniversitySearchPageState();
}

class UniversitySearchPageState extends State<UniversitySearchPage> {
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
    for (final school in [UPJS, TUKE]) {
      if (school.name
          .toLowerCase()
          .contains(this._controller.text.toLowerCase())) {
        results.add(Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.5, horizontal: 10.0),
          child: Card(
            elevation: 5.0,
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => UniversityPage(school: school))),
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
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => CareersSearchPage())),
        label: Text("Profesie"),
        icon: Icon(Icons.work),
        //backgroundColor: Colors.green,
      ),
    );
  }
}
