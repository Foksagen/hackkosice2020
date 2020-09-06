import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackkosice2020/ui.dart';

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
    for (final school in [
      postova,
      dopravna,
      srobarova,
      gta,
      spse,
      gymes,
      gpm
    ]) {
      if (school.name
          .toLowerCase()
          .contains(this._controller.text.toLowerCase())) {
        results.add(Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.5, horizontal: 30.0),
          child: createCard(
            school.name,
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
                    school.contact[0],
                    textAlign: TextAlign.start,
                    style: descStyle,
                  ),
                ),
              ],
            ),
            school.picture,
            () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => HighSchoolPage(school: school))),
            biggerImage: true,
          ),
        ));
      }
    }
    this.setState(() => this._schools = results);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Material(
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
                color: Colors.transparent,
                elevation: 5.0,
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(25.0))),
                  child: TextField(
                    controller: this._controller,
                    decoration: InputDecoration(
                      hintText: "Vyhľadať",
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey[800],
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.tune,
                          color: Colors.grey[800],
                        ),
                        //color: this._showFilters ? Theme.of(context).accentColor : Colors.grey,
                        //onPressed: () => setState(() => this._showFilters = !this._showFilters),
                      ),
                    ),
                    onChanged: (value) => this._updateResults(),
                    onSubmitted: (value) => this._updateResults(),
                  ),
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
      ),
    );
  }
}
