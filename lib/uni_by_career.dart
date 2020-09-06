import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackkosice2020/ui.dart';
import 'package:hackkosice2020/unis.dart';
import 'package:hackkosice2020/university_page.dart';

import 'careers_search_page.dart';

class UniByCareer extends StatefulWidget {
  final String career;

  UniByCareer({Key key, this.career}) : super(key: key);

  @override
  UniByCareerState createState() => UniByCareerState();
}

class UniByCareerState extends State<UniByCareer> {
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
    for (final school in [UPJS, TUKE, Komenskeho, MatejaBela]) {
      if (school.careers.keys.contains(widget.career)) {
        results.add(Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.5, horizontal: 10.0),
          child: createCard(
            school.name,
            Text(school.careers[widget.career]),
            school.picture,
            () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => UniversityPage(school: school))),
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
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25.0))),
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
