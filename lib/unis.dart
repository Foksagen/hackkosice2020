const UPJS = Uni(
    name: "Gymnázium, Poštová 9, Košice",
    classTypes: ["všeobecná", "anglická", "matematická"],
    studyLength: 4,
    contact: [
      "Poštová 9, Košice",
      "Mgr. Otto Révész",
      "055/6226604",
      "revesz@gympos.sk",
    ],
    info:
        "Naše gymnázium v historickej budove v centre Košíc už takmer päťdesiat rokov plní svoje poslanie: kvalitne pripraviť žiakov na vysokoškolské štúdium. Sme hrdí na to, že nás vyhľadávajú ďalšie generácie našich absolventov, ktorým, rovnako ako pred rokmi ich rodičom, učarovala škola tradičná a progresívna zároveň. ",
    infoTitle: "Škola s tradíciou",
    practiceTests: [
      "https://www.gympos.sk/files/vyskusajte-sa/test_PS_2014.htm",
      "https://www.gympos.sk/files/vyskusajte-sa/test_PS_SJL.htm"
    ],
    succesrate: 56.3,
    date: "19. máj - 18. júl",
    vidUrl:
        "https://drive.google.com/file/d/1Z4SL1Q-U_4pVHy6ehoTKkIXvzEz0Wbpo/view?usp=sharing",
    students: 513,
    careers: <String, String>{
      "Medicína": "Lekárska fakulta",
      "Zubná medicína": "Lekárska fakulta",
      "Informatika": "Prírodovedecká fakulta",
      "Matematika": "Prírodovedecká fakulta",
      "Všeobecná ekológia": "Prírodovedecká fakulta",
      "Medzinárodné vzťahy": "Filozofická fakulta",
      "Pedagogika": "Pedagogická fakulta",
      "Masmediálne štúdiá": "Filozofická fakulta",
      "Právo": "Právnická fakulta",
      "Genetika a molekulárna biológia": "Prírodovedecká fakulta",
    });

class Uni {
  final String name;
  final List<String> classTypes;
  final int studyLength;
  final List<String> contact;
  final String info;
  final String infoTitle;
  final List<String> practiceTests;
  final double succesrate;
  final String date;
  final String vidUrl;
  final int students;
  final Map<String, String> careers;

  const Uni(
      {this.name,
      this.students,
      this.infoTitle,
      this.classTypes,
      this.studyLength,
      this.contact,
      this.info,
      this.practiceTests,
      this.succesrate,
      this.date,
      this.vidUrl,
      this.careers});
}
