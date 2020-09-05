const UPJS = Uni(
    name: "Univerzita Pavla Jozefa Šafárika",
    classTypes: [
      "Lekárska",
      "Prírodovedecká",
      "Právnická",
      "Verejnej správy",
      "Filozofická fakulta"
    ],
    studyLength: 2 - 4,
    contact: [
      "Šrobárová 2, 04180 Košice",
      "055/2341100",
      "rektor@upjs.sk",
      "prof. RNDr. Pavol Sovák, CSc."
    ],
    info:
        "Univerzita Pavla Jozefa Šafárika v Košiciach (ďalej len „Univerzita“) patrí k významným a uznávaným vzdelávacím a vedeckým ustanovizniam nielen v Slovenskej republike, ale aj vo vyspelej Európe. V súčasnom období má Univerzita fakulty lekársku, prírodovedeckú, právnickú, fakultu verejnej správy a filozofickú fakultu, ktoré pripravujú lekárov, odborníkov z prírodovedných disciplín, matematiky a informatiky, učiteľov, právnikov, odborníkov pre oblasť verejnej správy, filozofie, jazykov, psychológie a sociálnej práce. Absolventi tejto druhej najstaršej klasickej slovenskej univerzity majú dobrú povesť doma i v zahraničí.",
    infoTitle: "Škola s tradíciou",
    practiceTests: ["", ""],
    acceptanceRate: 93,
    date: "6.4 - 13.4",
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
      "Masmediálne štúdiá": "Filoyofická fakulta",
      "Právo": "Právnická fakulta",
      "Genetika a molekulárna biológia": "Prírodovedecká fakulta",
    });

const TUKE = Uni(
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
    acceptanceRate: 80,
    date: "19.Máj - 18.Júl",
    vidUrl:
        "https://drive.google.com/file/d/1Z4SL1Q-U_4pVHy6ehoTKkIXvzEz0Wbpo/view?usp=sharing",
    students: 513,
    careers: <String, String>{
      "Informatika": "Fakulta elektrotechniky a informatiky",
      "Kartografia": "Fakulta BERG",
      "Matematika": "Fakulta elektrotechniky a informatiky",
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
  final int acceptanceRate;
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
      this.acceptanceRate,
      this.date,
      this.vidUrl,
      this.careers});
}
