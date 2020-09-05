const UPJS = Uni(
    name: "Univerzita Pavla Jozefa Šafárika",
    classTypes: [
      "Lekárska",
      "Prírodovedecká",
      "Právnická",
      "Verejnej správy",
      "Filozofická fakulta"
    ],
    studyLength: "2 - 4",
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
    name: "Technická Univerzita v Košiciach",
    classTypes: ["Fakulta baníctva, ekológie, riadenia a geotechnológií", "Fakulta materiálov, metalurgie a recyklácie", "Strojnícka fakulta"
    "Fakulta elektrotechniky a informatiky","Stavebná fakulta", "Ekonomická fakulta", "Fakulta výrobných technológií", "Fakulta umení", "Letecká fakulta"],
    studyLength: "2-4",
    contact: [
      "Letná 9,042 00 Košice",
      "Ing. Adrián Harčár, PhD.",
      "055/602 2003",
      "kancelar@tuke.sk",
    ],
    info:
        "Technická univerzita v Košiciach pokrýva široké spektrum potrieb vzdelávania nielen pre región východného Slovenska, ale v mnohých odboroch je jediným centrom vedy, výskumu a vzdelávania nielen na Slovensku, ale aj v stredoeurópskom priestore. Úzko spolupracuje s inými univerzitami a s priemyselným zázemím regiónu i celého Slovenska.V posledných rokoch sa výrazne zvyšuje záujem o štúdium zo strany zahraničných študentov, čím sa TUKE etabluje v medzinárodnom priestore ako významná vzdelávacia inštitúcia. Na univerzite študujú študenti zo štyridsiatich krajín sveta.",
    infoTitle: "TUKE dnes",
    practiceTests: [
      "",
      ""
    ],
    acceptanceRate: 80,
    date: "19. máj - 18. júl",
    vidUrl:
        "https://drive.google.com/file/d/1Z4SL1Q-U_4pVHy6ehoTKkIXvzEz0Wbpo/view?usp=sharing",
    students: 9714,
    careers: <String, String>{
      "Informatika": "Fakulta elektrotechniky a informatiky",
      "Kartografia": "Fakulta BERG",
      "Matematika": "Fakulta elektrotechniky a informatiky",
      "Genetika a molekulárna biológia": "Prírodovedecká fakulta",
    });

class Uni {
  final String name;
  final List<String> classTypes;
  final String studyLength;
  final List<String> contact;
  final String info;
  final String infoTitle;
  final List<String> practiceTests;
  final int acceptanceRate;
  final String date;
  final String vidUrl;
  final int students;
  final Map<String, String> careers;
  final int succesrate;

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
      this.succesrate,
      this.careers});
}
