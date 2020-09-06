import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackkosice2020/courses.dart';
import 'package:hackkosice2020/ui.dart';
import 'package:hackkosice2020/uni_by_career.dart';

List<String> subjects = [
  "Biológia",
  "Chémia",
  "Fyzika",
  "Informatika",
  "Geografia",
  "Občianska náuka",
  "Dejepis",
  "Slovenský jazyk a literatúra",
  "Nemecký jazyk",
  "Anglický jazyk",
  "Ruský jazyk",
  "Francúzsky jazyk",
  "Umenie a kultúra",
];

final images = <String, String>{
  "Medicína": "https://www.mendeley.com/careers/getasset/c475b7c0-d36c-4c73-be33-a34030b6ca82/",
  "Bioinformatika": "https://after12thwhat.com/wp-content/uploads/2016/01/Career-in-Bioinformatics.jpg",
  "Zubná medicína": "https://www.careergirls.org/wp-content/uploads/2018/05/dentist_1920x1080.jpg",
  "Kartografia": "https://www.istp.sk/pozicie_ilustracie/2730_2049_2049_inzinier%20geodet%20a%20kartograf.jpg",
  "Informatika": "https://cdn8.dissolve.com/p/D538_253_001/D538_253_001_0004_600.jpg",
  "Matematika": "https://images.says.com/uploads/story/cover_image/36733/large_thumb_87dd.jpg",
  "Všeobecná ekológia": "https://static8.depositphotos.com/1338850/834/i/450/depositphotos_8341578-stock-photo-ecologist-determined-a-plant.jpg",
  "Medzinárodné vzťahy": "https://www.istp.sk/pozicie_ilustracie/3367_30517_Zamestnanec%20samospravneho%20kraja%20pre%20medzinarodne%20vztahy.jpg",
  "Pedagogika": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Princeton_lecture.jpg/220px-Princeton_lecture.jpg",
  "Žurnalistika": "https://www.demokracija.si/media/k2/items/cache/28b5115eff2112160c5717b7d9c15eb5_XL.jpg",
  "Právo": "https://www.lawyersweekly.com.au/images/resize/2019-06-19_95d7.jpg",
  "Molekulárna biológia": "https://i.ytimg.com/vi/CSJ7oAs897A/maxresdefault.jpg",
};

class CareersSearchPage extends StatefulWidget {
  @override
  CareersSearchPageState createState() => CareersSearchPageState();
}

class CareersSearchPageState extends State<CareersSearchPage> {
  var _subject1;
  var _subject2;

  List<Widget> _careers;

  @override
  void initState() {
    super.initState();
    this._updateCareers();
  }

  void _updateCareers() {
    this._careers = null;
    final results = <Widget>[];

    for (final x in careers.entries) {
      if ((this._subject1 == null && this._subject2 == null) || (x.value.contains(this._subject1) && x.value.contains(this._subject2))) {
        results.add(Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.5, horizontal: 30.0),
          child: createCard(
            x.key,
            Text(""),
            images[x.key],
            () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => UniByCareer(career: x.key))),
            biggerImage: true,
          ),
        ));
      }
    }
    this.setState(() => this._careers = results);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                "Kariéra",
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: FormField<String>(
                builder: (FormFieldState<String> state) {
                  return InputDecorator(
                    decoration: InputDecoration(
                      hintText: 'Zadajte prvý predmet',
                      fillColor: Color.fromRGBO(30, 132, 127, 1.0),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    isEmpty: this._subject1 == "",
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: this._subject1,
                        isDense: true,
                        icon: Icon(Icons.arrow_downward, color: Colors.white),
                        iconSize: 24,
                        onChanged: (String newValue) {
                          setState(() {
                            this._subject1 = newValue;
                            this._updateCareers();
                          });
                        },
                        selectedItemBuilder: (BuildContext context) {
                          return subjects.map((String value) {
                            return Text(
                              value,
                              style: TextStyle(color: Colors.white),
                            );
                          }).toList();
                        },
                        items: subjects.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(color: Colors.black),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
              child: FormField<String>(
                builder: (FormFieldState<String> state) {
                  return InputDecorator(
                    decoration: InputDecoration(
                      hintText: 'Zadajte druhý predmet',
                      fillColor: Color.fromRGBO(30, 132, 127, 1.0),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    isEmpty: this._subject2 == "",
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: this._subject2,
                        icon: Icon(Icons.arrow_downward, color: Colors.white),
                        iconSize: 24,
                        isDense: true,
                        onChanged: (String newValue) {
                          setState(() {
                            this._subject2 = newValue;
                            this._updateCareers();
                          });
                        },
                        selectedItemBuilder: (BuildContext context) {
                          return subjects.map((String value) {
                            return Text(
                              value,
                              style: TextStyle(color: Colors.white),
                            );
                          }).toList();
                        },
                        items: subjects.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(color: Colors.black),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: this._careers != null
                  ? SingleChildScrollView(
                      child: Column(
                        children: this._careers,
                      ),
                    )
                  : Center(
                      child: CircularProgressIndicator(),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
