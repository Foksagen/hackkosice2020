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
  picture: 'gympos.jpg',
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
  final String picture;

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
      this.vidUrl});
}

const srobarova = HighSchool(
  name: "Gymnázium, Šrobárova 1, Košice",
  classTypes: [
    "všeobecná",
    "anglická",
    "nemecká",
    "matematická",
    "informatická"
  ],
  studyLength: 4,
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
);
