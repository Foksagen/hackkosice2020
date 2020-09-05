import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Expanded(
              child: TextField(
                controller: this._controller,
                onChanged: (value) => this._updateResults(),
                onSubmitted: (value) => this._updateResults(),
              ),
            ),
          ),
        ].followedBy(this._schools),
      ),
    );
  }
}