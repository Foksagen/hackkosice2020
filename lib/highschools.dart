const postova = HighSchool(
  name: "Gymnázium, Poštová 9, Košice",
  classTypes: ["všeobecná", "anglická", "matematická"],
  studyLength: 4,
  contact: [
    "Poštová 9, Košice",
    "055/6226604",
    "revesz@gympos.sk",
    "Mgr. Otto Révész"
  ],
  info:
      "Naše gymnázium v historickej budove v centre Košíc už takmer päťdesiat rokov plní svoje poslanie: kvalitne pripraviť žiakov na vysokoškolské štúdium. Sme hrdí na to, že nás vyhľadávajú ďalšie generácie našich absolventov, ktorým, rovnako ako pred rokmi ich rodičom, učarovala škola tradičná a progresívna zároveň. ",
  infoTitle: "Škola s tradíciou",
  practiceTests: [
    "https://www.gympos.sk/files/vyskusajte-sa/test_PS_2014.htm",
    "https://www.gympos.sk/files/vyskusajte-sa/test_PS_SJL.htm"
  ],
  succesrate: 53,
  date: "19.Máj - 18.Júl",
  vidUrl:
      "https://drive.google.com/file/d/1Z4SL1Q-U_4pVHy6ehoTKkIXvzEz0Wbpo/view?usp=sharing",
  students: 513,
);

const dopravna = HighSchool(
  name: "Stredná priemyselná škola dopravná",
  classTypes: [
    "elektrotechnika v doprave a telekomunikáciách",
    "prevádzka a ekonomika dopravy",
    "technika a prevádzka dopravy, dopravná akadémia"
  ],
  studyLength: 2,
  contact: [
    "Hlavná 113, 040 01 Košice",
    "+42155/727 70 11",
    "spsdke@spsdopke.edu.sk",
    "Hospodár, Martin, Ing."
  ],
  info: "",
  infoTitle: "",
  practiceTests: [""],
  date: "",
  vidUrl: "",
  students: 0,
);

class HighSchool {
  final String name;
  final List<String> classTypes;
  final int studyLength;
  final List<String> contact;
  final String info;
  final String infoTitle;
  final List<String> practiceTests;
  final String date;
  final String vidUrl;
  final int students;
  final int succesrate;

  const HighSchool(
      {this.name,
      this.students,
      this.infoTitle,
      this.classTypes,
      this.studyLength,
      this.contact,
      this.info,
      this.practiceTests,
      this.date,
      this.succesrate,
      this.vidUrl});
}
