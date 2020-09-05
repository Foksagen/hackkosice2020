import 'dart:html';

class HighSchool {
  final String name;
  final List<String> classTypes;
  final String studyLength;
  final List<String> contact;
  final String info;
  final String infoTitle;
  final List<String> practiceTests;
  final String date;
  final String vidUrl;
  final int students;
  final int succesrate;
  final String picture;
  final String web;

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
      this.picture,
      this.web,
      this.vidUrl});
}

const postova = HighSchool(
    name: "Gymnázium, Poštová 9, Košice",
    classTypes: ["všeobecná", "anglická", "matematická"],
    studyLength: "4",
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
    picture: 'gympos.jpg',
    web: "https://www.gympos.sk/");

const dopravna = HighSchool(
  name: "Stredná priemyselná škola dopravná",
  classTypes: [
    "elektrotechnika v doprave a telekomunikáciách",
    "prevádzka a ekonomika dopravy",
    "technika a prevádzka dopravy, dopravná akadémia"
  ],
  studyLength: "4",
  contact: [
    "Hlavná 113, 040 01 Košice",
    "+42155/727 70 11",
    "spsdke@spsdopke.edu.sk",
    "Hospodár, Martin, Ing."
  ],
  info:
      "Ponúkame: komplexné štvorročné vzdelanie vo všetkých oblastiach dopravy, pôšt a telekomunikácií; profesionálnu prípravu na technicko-hospodárske, prevádzkové činnosti, vysokokvalifikovaných    špecializovaných odborníkov v štátnom i súkromnom sektore, vrátane prípravy na samostatné  podnikanie - štúdium sa končí maturitnou skúškou; praktickú prípravu žiakov v zahraničí v rámci medzinárodných projektov; absolventi školy sú pripravení aj pre vysokoškolské štúdium najmä na technických VŠ so zameraním na dopravu, elektrotechniku, strojárenstvo, ekonomiku a pod.",
  infoTitle:
      "Stredná priemyselná škola dopravná od šk.roku 1967/68 vychováva odborníkov v oblasti dopravy.",
  practiceTests: [""],
  date: "15.06. - 23.06.",
  vidUrl: "",
  students: 456,
  picture: 'dopravna.jpg',
  succesrate: 100,
  web: "https://spsdke.edupage.org/",
);

const srobarova = HighSchool(
  name: "Gymnázium, Šrobárova 1, Košice",
  classTypes: [
    "všeobecná",
    "anglická",
    "nemecká",
    "matematická",
    "informatická"
  ],
  studyLength: "4",
  contact: [
    "Šrobárova 1, Košice",
    "055/6226604",
    "frankovicova@srobarka.sk",
    "Mgr. PaedDr. Frankovičová Zlatica"
  ],
  info:
      "Výchovu a vzdelávanie na našej škole realizujeme viac ako 128 rokov. Na škole študuje 545 žiakov a pôsobí 40 učiteľov, nemecký lektor a anglický lektor.Hlavným poslaním nášho gymnázia je pripravovať vzdelaných a flexibilných absolventov, ktorí budú úspešní na ktoromkoľvek type vysokej školy, nájdu uplatnenie na domácom i medzinárodnom trhu práce.Zárukou kvalitnej výuky na našej škole sú kvalitní pedagógovia a kvalitné materiálovo-technické vybavenie učební. Vďaka získanému statusu partnerskej školy Prírodovedeckej fakulty v Košiciach (toto partnerstvo sme získali na základe toho, že sme nositeľmi tvorivého prírodovedného vzdelávania, ktoré sa výraznou mierou zaslúži o popularizáciu prírodných vied medzi mladými ľuďmi), úzko spolupracujeme s fakultou.",
  infoTitle: "Škola s tradíciou",
  practiceTests: [
    "https://www.srobarka.sk/wp-content/documents/modelove-testy/2018/slovensky-jazyk-a-literatura.pdf",
    "https://www.srobarka.sk/wp-content/documents/modelove-testy/2018/slovensky-jazyk-a-literatura.pdf"
  ],
  succesrate: 44,
  date: "19.Máj - 18.Júl",
  vidUrl: "",
  students: 597,
  web: "https://www.srobarka.sk/",
);

const spse = HighSchool(
    name: "Gymnázium, Šrobárova 1, Košice",
    classTypes: [
      "elektrotechnika",
      "technické lýceum",
      "počitačové systémy",
      "informačné a sieťové technológie",
    ],
    studyLength: "4",
    contact: [
      "Komenského 44, Košice",
      "055/7968151",
      "spse@spseke.sk",
      "Ing. Štefan KRIŠTÍN"
    ],
    info:
        "Naša škola umožňuje štvorročné štúdium s maturitou v troch študijných odboroch 2675 M Elektrotechnika, 3918 M Technické lýceum, čo je označenie pre výberové školy podobné našim gymnáziám, ktoré v krajinách západnej Európy úspešne existujú už desiatky rokov a nový študijný odbor 2561M Informačné a sieťové technológie. V rámci štúdia sa prostredníctvom voliteľného predmetu elektrotechnická spôsobilosť žiaci pripravujú na skúšku pre získanie elektrotechnickej spôsobilosti podľa § 21 Vyhl. 508/2009 Z.z.",
    infoTitle: "",
    practiceTests: [],
    succesrate: 78,
    date: "",
    vidUrl: "",
    students: 834,
    web: "https://www.spseke.sk/");

const gpm = HighSchool(
    name: "Gymnázium, Park mládeže 5, Košice",
    classTypes: [
      "Bilingválne slovensko-španielske štúdium",
      "Bilingválne slovensko-anglické štúdium",
      "Klasické štúdium",
      "Štúdium s rozšíreným vyučovaním anglického jazyka",
    ],
    studyLength: "4-5",
    contact: [
      "Park mládeže 5, 040 01 Košice",
      "055/6335470",
      "office@gpm.sk",
      "Mgr.  Milan Marinčák "
    ],
    info:
        "ponúkame študentom moderne vybavené odborné učebne na vyučovanie matematiky, fyziky, chémie, biológie, cudzích jazykov a na výuku informatiky máme vybavené 2 multimediálne učebne vhodné aj pre výučbu ostatných predmetov, ktoré sú zahrnuté do školského vzdelávacieho programu. Navyše v každej učebni je nainštalovaný dataprojektor.Študentom, ktorí sú zo vzdialenejších miest, ponúkame možnosť ubytovania v stredoškolských domovoch mládeže. Pri úprave priestorov našej školy – tried, ale i chodieb, sa snažíme využívať potenciál našich žiakov. Oni sami sa niekedy podieľajú návrhmi (ba niekedy i realizáciou) na úprave jednotlivých priestorov školy – najmä vlastných tried, ale i niektorých chodieb. Vždy nám záleží na tom, aby sa naši študenti v škole cítili príjemne.",
    infoTitle: "",
    practiceTests: [],
    succesrate: 89,
    date: "19.5. - 29.5.",
    vidUrl: "",
    students: 620,
    web: "https://gpm.edupage.org/");

const gta = HighSchool(
    name: "Gymnáziumsv. Tomáša Akvinského",
    classTypes: ["8-ročná forma", "4-ročná forma"],
    studyLength: "4/8",
    contact: [
      "Zbrojničná 3, 040 01 Košice",
      "+421 55 62 227 95",
      "skola@gta.sk",
      "PaedDr. Anna Medvecká"
    ],
    info:
        "Gymnázium svätého Tomáša Akvinského (skrátene GTA) je cirkevné katolícke gymnázium v Košiciach spravované kongregáciou sestier dominikánok. Vzniklo v roku 1991 ako štvorročné gymnázium a o päť rokov neskôr, v roku 1996, bolo rozšírené o triedu osemročného gymnázia.",
    infoTitle: "",
    practiceTests: [],
    succesrate: 93,
    date: "19.5. - 29.5.",
    vidUrl: "",
    students: 560,
    web: "https://www.gta.sk/");

const gymes = HighSchool(
    name: "Gymnázium sv.Edity Steinovej Košice",
    classTypes: ["8-ročná forma", "5-ročná bilinguálna forma"],
    studyLength: "5/8",
    contact: [
      "Charkovská 1, 040 22  Košice",
      "+421 55 799 48 75",
      "riaditel@gymes.eu",
      "Mgr. Marek Zlacký"
    ],
    info:
        "Gymnázium sv.Edity Steinovej v Košiciach je gymnáziom, ktoré je zriadené Arcibiskupským úradom v Košiciach. Záujmom školy je, aby sa žiaci vzdelávali pod vedením vysoko kvalifikovaných pedagógov, aby tak absolventi školy boli úspešní vo vysokoškolskom štúdiu a ďalšom osobnom i pracovnom živote. Pedagogický tím Gymnázia sv. Edity Steinovej tvoria predovšetkým mladí učitelia. Ich vek je zárukou motivácie, porozumenia vo vzťahu k študentom i možnosťou vytvorenia jednotného kolektívu. Pri poskytovaní služby vzdelávania sú pre nás najdôležitejšie trvalé kresťanské hodnoty: múdrosť, úcta, radosť. ",
    infoTitle:
        "Cieľom našej školy je presadzovať systém „otvorenej rodinnej školy“ pre najbližšiu komunitu a okolie.",
    practiceTests: [],
    succesrate: 93,
    date: "19.5. - 29.5.",
    vidUrl: "",
    students: 700,
    web: "https://gymes.edupage.org/");
