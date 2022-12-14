import 'package:injectable/injectable.dart';

@Injectable()
class WordsService {
  List<String> getLatinWordList() {
    return _latinWords;
  }

  List<String> getLatinAnswers() {
    return _latinAnswers;
  }

  List<String> getCyrillicWordList() {
    return _cyrrilQuestions;
  }

  List<String> getCyrillicAnswers() {
    return _cyrillAnswers;
  }
}

const _latinAnswers = [
  'salom',
  'bilan',
  'katta',
  'boshqa',
  'keyin',
  'yaxshi',
  'barcha',
  'faqat',
  'lekin',
  'turli',
  'narsa',
  'butun',
  'javob',
  'inson',
  'balki',
  'savol',
  'kerak',
  'shahar',
  'qancha',
  'zarur',
  'hozir',
  'bitta',
  'biror',
  'tilla',
  'kiyim',
  'avval',
  'yigit',
  'qachon',
  'buyuk',
  'oldin',
  'zamon',
  'jahon',
  'savdo',
  'kitob',
  'quyosh',
  'chuqur',
  'dunyo',
  'oddiy',
  'bugun',
  'yomon',
  'kuchli',
  'birga',
];

const _latinWords = [
  'bilan',
  'bo‘lib',
  'qilib',
  'bo‘lsa',
  'kerak',
  'bo‘ldi',
  'katta',
  'boshqa',
  'keyin',
  'kelib',
  'yaxshi',
  'degan',
  'qildi',
  'ketdi',
  'qilish',
  'qoldi',
  'barcha',
  'yerda',
  'keldi',
  'ishlab',
  'qarab',
  'chiqib',
  'turli',
  'hamda',
  'faqat',
  'olgan',
  'lekin',
  'narsa',
  'paydo',
  'holda',
  'o‘ziga',
  'butun',
  'ma’lum',
  'javob',
  'turib',
  'kirib',
  'o‘zini',
  'to‘g‘ri',
  'birga',
  'berdi',
  'borib',
  'inson',
  'marta',
  'etgan',
  'undan',
  'mening',
  'hosil',
  'balki',
  'etadi',
  'lozim',
  'qarshi',
  'yaqin',
  'ko‘rib',
  'davom',
  'qabul',
  'hamma',
  'muhim',
  'yerga',
  'ichida',
  'oladi',
  'berib',
  'tushib',
  'o‘zbek',
  'ilmiy',
  'birla',
  'ta’sir',
  'hayot',
  'bulib',
  'yetib',
  'o‘tgan',
  'qo‘ydi',
  'aytib',
  'qancha',
  'yilda',
  'zarur',
  'shahar',
  'yirik',
  'qismi',
  'xuddi',
  'hozir',
  'berish',
  'biror',
  'qadar',
  'qayta',
  'bitta',
  'kichik',
  'hatto',
  'qo‘yib',
  'ayrim',
  'yomon',
  'dunyo',
  'roman',
  'deydi',
  'talab',
  'dedim',
  'chiqdi',
  'chunki',
  'tomon',
  'yarim',
  'bosib',
  'o‘zaro',
  'tushdi',
  'solib',
  'sabab',
  'avval',
  'yigit',
  'ortiq',
  'qachon',
  'taolo',
  'buyuk',
  'xabar',
  'kuchli',
  'oldin',
  'zamon',
  'bulsa',
  'sizga',
  'ta’lim',
  'topib',
  'qissa',
  'yo‘lga',
  'qaysi',
  'davri',
  'bo‘lish',
  'jahon',
  'oddiy',
  'kunda',
  'o‘ylab',
  'yozib',
  'bugun',
  'bo‘lur',
  'go‘zal',
  'ishlar',
  'kitob',
  'ichiga',
  'bilib',
  'ba’zan',
  'sening',
  'aylab',
  'savdo',
  'quyosh',
  'dengiz',
  'bayon',
  'bordi',
  'chuqur',
  'tutib',
  'ko‘ngul',
  'erkin',
  'sodir',
  'nafas',
  'qolib',
  'qadam',
  'qilsa',
  'diniy',
  'turdi',
  'yetti',
  'bo‘lar',
  'biron',
  'bo‘lub',
  'joyda',
  'sotib',
  'gapni',
  'nazar',
  'kutib',
  'so‘nggi',
  'yengil',
  'kirdi',
  'buning',
  'san’at',
  'ulkan',
  'qiyin',
  'ko‘rdi',
  'xolos',
  'tashqi',
  'oltin',
  'qator',
  'qizil',
  'bozor',
  'bunda',
  'so‘ngra',
  'ko‘ngli',
  'qo‘lga',
  'otasi',
  'daryo',
  'xotin',
  'mayda',
  'ushlab',
  'safar',
  'ketib',
  'aytdi',
  'sizni',
  'shuning',
  'o‘xshab',
  'paxta',
  'oxiri',
  'turar',
  'shuncha',
  'soldi',
  'kimga',
  'temir',
  'hamon',
  'ko‘ngil',
  'biroq',
  'imkon',
  'qaror',
  'barpo',
  'bormi',
  'onasi',
  'qo‘shib',
  'andin',
  'namoz',
  'ovozi',
  'sovuq',
  'quloq',
  'savol',
  'qilur',
  'o‘tadi',
  'yurib',
  'kulib',
  'bilim',
  'foyda',
  'vafot',
  'tirik',
  'qilar',
  'joriy',
  'uyiga',
  'qochib',
  'shirin',
  'usuli',
  'shakli',
  'islom',
  'kurash',
  'ko‘zga',
  'nomli',
  'yashab',
  'yoqqa',
  'shunda',
  'o‘zida',
  'ko‘rish',
  'so‘rab',
  'aynan',
  'joyga',
  'kelsa',
  'boshka',
  'tuman',
  'haqda',
  'qonun',
  'bular',
  'osmon',
  'tilga',
  'bilish',
  'shamol',
  'topish',
  'hadis',
  'yo‘lda',
  'topdi',
  'aholi',
  'misol',
  'doimo',
  'yurak',
  'to‘liq',
  'qisqa',
  'bering',
  'borish',
  'qat’iy',
  'mayli',
  'yoxud',
  'bolam',
  'tugri',
  'tovush',
  'voqea',
  'birov',
  'quruq',
  'qolsa',
  'ifoda',
  'olishi',
  'salom',
  'chiqish',
  'shahri',
  'asari',
  'tag‘in',
  'issiq',
  'oldim',
  'ermas',
  'tamom',
  'aytish',
  'kelar',
  'aylar',
  'ishonch',
  'jonim',
  'anglab',
  'ma’qul',
  'debdi',
  'buyon',
  'zarar',
  'yog‘och',
  'vaqti',
  'burun',
  'qo‘yish',
  'egasi',
  'orada',
  'xayol',
  'oppoq',
  'halok',
  'tarix',
  'ingliz',
  'bekor',
  'xolda',
  'demak',
  'o‘tmay',
  'nozik',
  'sekin',
  'modda',
  'suvga',
  'desam',
  'teatr',
  'ketar',
  'ovqat',
  'holat',
  'huquq',
  'yashil',
  'nasib',
  'ziyod',
  'erkak',
  'devor',
  'o‘tkir',
  'rangli',
  'zohir',
  'borar',
  'qog‘oz',
  'uzbek',
  'ko‘chib',
  'inkor',
  'qurib',
  'yurdi',
  'guruh',
  'o‘g‘lim',
  'a’zosi',
  'ermish',
  'sariq',
  'qiling',
  'uzaro',
  'ishora',
  'bahor',
  'tavba',
  'lahza',
  'qilma',
  'xalqi',
  'ruhiy',
  'chetga',
  'raisi',
  'sport',
  'garchi',
  'biroz',
  'xalos',
  'yetdi',
  'kumush',
  'gunoh',
  'kesib',
  'g‘oyat',
  'erdim',
  'rioya',
  'baliq',
  'olmay',
  'turish',
  'uziga',
  'qo‘shni',
  'sodda',
  'hissa',
  'so‘zni',
  'yorug‘',
  'etishi',
  'yurish',
  'sifat',
  'qurish',
  'qotib',
  'ortib',
  'kimsa',
  'da’vat',
  'qarang',
  'kiyib',
  'xamda',
  'ustun',
  'sezib',
  'xosil',
  'ellik',
  'bo‘lak',
  'kimyo',
  'ishini',
  'sun’iy',
  'tuzish',
  'suvda',
  'jamoa',
  'halol',
  'kuldi',
  'qo‘shiq',
  'unday',
  'solik',
  'iloji',
  'qizim',
  'tanish',
  'boqib',
  'ijodi',
  'to‘lib',
  'ko‘zim',
  'qo‘shma',
  'izlab',
  'taraf',
  'bersa',
  'qolar',
  'sayin',
  'mahal',
  'yonib',
  'eslab',
  'bemor',
  'urushi',
  'sobiq',
  'surib',
  'yo‘qmi',
  'hujum',
  'kelin',
  'mulki',
  'ishdan',
  'yozish',
  'idrok',
  'havas',
  'yotib',
  'she’riy',
  'asosi',
  'qulay',
  'meros',
  'oyog‘i',
  'aloqa',
  'kirish',
  'qalin',
  'qo‘shin',
  'qalam',
  'g‘azal',
  'asrda',
  'yoqda',
  'falak',
  'o‘sadi',
  'uyida',
  'komil',
  'yerni',
  'harom',
  'gapga',
  'yozma',
  'oyida',
  'bulish',
  'xonim',
  'berar',
  'tekis',
  'muncha',
  'solish',
  'olmas',
  'buldi',
  'qazib',
  'ayting',
  'hanuz',
  'o‘ttiz',
  'borki',
  'uxlab',
  'o‘rmon',
  'tutdi',
  'bosdi',
  'qolish',
  'avlod',
  'tuxum',
  'yoshga',
  'kelish',
  'o‘rtoq',
  'suzib',
  'niyat',
  'yilga',
  'tovar',
  'chiqar',
  'yog‘in',
  'o‘zicha',
  'yo‘lni',
  'chekib',
  'qiziq',
  'g‘oyib',
  'ekani',
  'ediki',
  'sovet',
  'domla',
  'chopib',
  'tezda',
  'soliq',
  'nechta',
  'dardi',
  'noyob',
  'shisha',
  'qodir',
  'ketish',
  'qizni',
  'parda',
  'ketsa',
  'qilay',
  'qilich',
  'fakat',
  'nemis',
  'ovora',
  'saroy',
  'ko‘zda',
  'begim',
  'oshkor',
  'o‘tgach',
  'yurti',
  'yashar',
  'zotga',
  'yakka',
  'nafar',
  'izhor',
  'kimni',
  'nozil',
  'minib',
  'sirli',
  'mayin',
  'manba',
  'yig‘ib',
  'foizi',
  'yiroq',
  'shular',
  'tushsa',
  'suvni',
  'janob',
  'olimi',
  'kasal',
  'zamin',
  'tilda',
  'tunda',
  'desang',
  'hajmi',
  'ishlov',
  'qalay',
  'istar',
  'loyiq',
  'ko‘kka',
  'hafta',
  'fizik',
  'ta’zim',
  'deyish',
  'keksa',
  'shubha',
  'ko‘rsa',
  'iymon',
  'o‘tishi',
  'muhit',
  'fikri',
  'yoqib',
  'mulla',
  'andoq',
  'tegib',
  'sharti',
  'kechib',
  'qalbi',
  'ravon',
  'qadah',
  'karab',
  'ko‘rub',
  'g‘olib',
  'ismli',
  'xodim',
  'ilg‘or',
  'gumon',
  'shoiri',
  'bo‘ling',
  'darak',
  'anglash',
  'sotish',
  'rivoj',
  'turfa',
  'itoat',
  'magar',
  'bosim',
  'qasam',
  'guvoh',
  'yetar',
  'puxta',
  'tashki',
  'mehri',
  'ustoz',
  'sodiq',
  'soqiy',
  'hokim',
  'idora',
  'haqqi',
  'menda',
  'o‘ynab',
  'sevgi',
  'hisob',
  'pulni',
  'tizim',
  'sezdi',
  'lizing',
  'o‘lgan',
  'uchrab',
  'buzib',
  'chiqsa',
  'qarash',
  'amaki',
  'behad',
  'sokin',
  'ibrat',
  'zo‘rg‘a',
  'kelur',
  'eshigi',
  'banda',
  'hovli',
  'istab',
  'ishiga',
  'ko‘zum',
  'kuyib',
  'oqshom',
  'boshim',
  'qo‘ying',
  'chog‘da',
  'ahvol',
  'ishning',
  'oylik',
  'sarvi',
  'g‘azab',
  'drama',
  'bulut',
  'tiniq',
  'podsho',
  'qizga',
  'qayda',
  'yechib',
  'makon',
  'uzviy',
  'bilar',
  'lirik',
  'teran',
  'madad',
  'g‘arib',
  'yutib',
  'payti',
  'tilla',
  'afg‘on',
  'yunon',
  'derdi',
  'yozuv',
  'iqlim',
  'mudom',
  'tushti',
  'savob',
  'najot',
  'xitob',
  'yilgi',
  'kalta',
  'hojat',
  'tursa',
  'tutish',
  'tilab',
  'afzal',
  'yotar',
  'og‘riq',
  'kimki',
  'tarzi',
  'to‘kib',
  'nishon',
  'xarob',
  'sukut',
  'ulkim',
  'yozdi',
  'kiyim',
  'soxta',
  'bildi',
  'quvib',
  'yurar',
  'uydan',
  'nuqta',
  'belgi',
  'nihon',
  'urug‘i',
  'oqimi',
  'bo‘lma',
  'vazir',
  'nobud',
  'vatan',
  'qanot',
  'yechish',
  'o‘sgan',
  'botib',
  'yadro',
  'kofir',
  'ko‘rar',
  'quyib',
  'jangda',
  'do‘sti',
  'so‘zga',
  'kuyov',
  'yuvib',
  'moyil',
  'turri',
  'terib',
  'nafis',
  'yetuk',
  'dardu',
  'olgach',
  'kuchga',
  'askar',
  'oftob',
  'farqi',
  'jadal',
  'etmay',
  'isloh',
  'o‘nlab',
  'tayin',
  'sopol',
  'jur’at',
  'toping',
  'ashula',
  'borsa',
  'nukta',
  'jonli',
  'mavzu',
  'yopib',
  'farod',
  'mirzo',
  'nikoh',
  'chiroq',
  'holga',
  'tikib',
  'yalpi',
  'kuzda',
  'xasta',
  'yoshli',
  'sanab',
  'buncha',
  'bazmi',
  'urgan',
  'noxush',
  'maqom',
  'yarmi',
  'damda',
  'nodir',
  'xolis',
  'cho‘zib',
  'topti',
  'isbot',
  'sajda',
  'katga',
  'olami',
  'mas’ul',
  'nechun',
  'uzini',
  'dalil',
  'qisib',
  'qozoq',
  'yorib',
  'asbob',
  'qadim',
  'akasi',
  'firoq',
  'ko‘ring',
  'tushar',
  'otini',
  'keling',
  'sarfi',
  'juvon',
  'tojik',
  'chikdi',
  'qo‘ng‘ir',
  'yetsa',
  'ukasi',
  'chetda',
  'hadya',
  'yoshda',
  'bejiz',
  'jismi',
  'otlar',
  'jo‘nab',
  'amiri',
  'ko‘hna',
  'bo‘pti',
  'nusxa',
  'cho‘kib',
  'o‘ylar',
  'saboq',
  'utgan',
  'suyuq',
  'po‘lat',
  'visol',
  'otliq',
  'do‘zax',
  'bag‘ri',
  'xarid',
  'chizik',
  'desak',
  'yetim',
  'olsak',
  'o‘lg‘ay',
  'parcha',
  'xayli',
  'dadam',
  'anavi',
  'ta’qib',
  'bezak',
  'armon',
  'aqlli',
  'qatla',
  'suyak',
  'yassi',
  'oydan',
  'tiyra',
  'ulchash',
  'shahid',
  'etmish',
  'yupqa',
  'axloq',
  'jigar',
  'sochib',
  'nuqul',
  'singib',
  'sonli',
  'tabib',
  'bo‘yin',
  'karim',
  'ildiz',
  'qurol',
  'to‘ldi',
  'yasab',
  'o‘limi',
  'kezib',
  'etnik',
  'silab',
  'surdi',
  'telba',
  'uyning',
  'atrof',
  'tulki',
  'ta’rif',
  'baxti',
  'oldik',
  'kamol',
  'fasli',
  'karam',
  'yegan',
  'tomchi',
  'bargi',
  'oshadi',
  'uchida',
  'hamki',
  'nodon',
  'tutub',
  'ziyon',
  'jangga',
  'mingga',
  'tirish',
  'qoqib',
  'ochgan',
  'mayus',
  'to‘sib',
  'zarba',
  'aytar',
  'oqadi',
  'hukmi',
  'bo‘lim',
  'ulushi',
  'bahri',
  'parvo',
  'o‘qidi',
  'zarra',
  'sherik',
  'ko‘mir',
  'dadil',
  'o‘lmish',
  'izchil',
  'karshi',
  'mo‘min',
  'chukur',
  'xunuk',
  'zolim',
  'insof',
  'firma',
  'pichoq',
  'panoh',
  'sovchi',
  'tutash',
  'chiziq',
  'ko‘zni',
  'aktiv',
  'qorin',
  'uylar',
  'sevib',
  'berur',
  'tuyg‘u',
  'sovg‘a',
  'yovuz',
  'nechuk',
  'topar',
  'topsa',
  'opera',
  'eriga',
  'duchor',
  'oyati',
  'hazil',
  'haqli',
  'yumib',
  'etdim',
  'qabri',
  'xamma',
  'okean',
  'qorni',
  'turing',
  'tanib',
  'tegdi',
  'usadi',
  'o‘tmish',
  'surat',
  'mushuk',
  'xatni',
  'xazon',
  'zumda',
  'yasash',
  'faqir',
  'tarki',
  'ortga',
  'misli',
  'yopiq',
  'odati',
  'ta’sis',
  'muzey',
  'so‘roq',
  'o‘lchash',
  'hunar',
  'chikish',
  'utadi',
  'bobda',
  'charxi',
  'kulgi',
  'yelka',
  'qochdi',
  'hushor',
  'atigi',
  'kechki',
  'falon',
  'yetish',
  'joyni',
  'oshgan',
  'tutun',
  'asrab',
  'aylay',
  'ehson',
  'cho‘kdi',
  'o‘lmas',
  'burib',
  'bilsa',
  'ixlos',
  'g‘alla',
  'yo‘g‘on',
  'otning',
  'yengib',
  'ishqing',
  'sahar',
  'kechdi',
  'pushti',
  'durur',
  'tilar',
  'ahmoq',
  'yechim',
  'boqdi',
  'tonna',
  'qoyil',
  'gilam',
  'toifa',
  'ondin',
  'yakin',
  'o‘sishi',
  'xurmo',
  'uslub',
  'talay',
  'zakot',
  'optik',
  'suvli',
  'ustki',
  'afsus',
  'minut',
  'lotin',
  'dayri',
  'nochor',
  'qayg‘u',
  'voqif',
  'buzuq',
  'qonli',
  'bo‘lay',
  'zulfi',
  'jilva',
  'ko‘zgu',
  'raqam',
  'kenja',
  'tutar',
  'jonni',
  'quyuq',
  'pulga',
  'taxta',
  'bosma',
];

const _cyrillAnswers = [
  'билан',
  'бўлиб',
  'қилиб',
  'бўлса',
  'керак',
  'бўлди',
  'катта',
  'бошқа',
  'кейин',
  'келиб',
  'деган',
  'қилди',
  'кетди',
  'қилиш',
  'қолди',
  'барча',
  'келди',
  'ишлаб',
  'қараб',
  'чиқиб',
  'турли',
  'ҳамда',
  'фақат',
  'олган',
  'лекин',
  'нарса',
  'пайдо',
  'ҳолда',
  'ўзига',
  'бутун',
  'жавоб',
  'туриб',
  'кириб',
  'ўзини',
  'тўғри',
  'бирга',
  'берди',
  'бориб',
  'инсон',
  'марта',
  'этган',
  'ундан',
  'менинг',
  'ҳосил',
  'балки',
  'этади',
  'лозим',
  'қарши',
  'кўриб',
  'давом',
  'қабул',
  'ҳамма',
  'муҳим',
  'ичида',
  'олади',
  'бериб',
  'тушиб',
  'ўзбек',
  'илмий',
  'бирла',
  'булиб',
  'ўтган',
  'қўйди',
  'айтиб',
  'қанча',
  'йилда',
  'зарур',
  'шаҳар',
  'йирик',
];

const _cyrrilQuestions = [
  'билан',
  'бўлиб',
  'қилиб',
  'бўлса',
  'керак',
  'бўлди',
  'катта',
  'бошқа',
  'кейин',
  'келиб',
  'деган',
  'қилди',
  'кетди',
  'қилиш',
  'қолди',
  'барча',
  'келди',
  'ишлаб',
  'қараб',
  'чиқиб',
  'турли',
  'ҳамда',
  'фақат',
  'олган',
  'лекин',
  'нарса',
  'пайдо',
  'ҳолда',
  'ўзига',
  'бутун',
  'жавоб',
  'туриб',
  'кириб',
  'ўзини',
  'тўғри',
  'бирга',
  'берди',
  'бориб',
  'инсон',
  'марта',
  'этган',
  'ундан',
  'менинг',
  'ҳосил',
  'балки',
  'этади',
  'лозим',
  'қарши',
  'кўриб',
  'давом',
  'қабул',
  'ҳамма',
  'муҳим',
  'ичида',
  'олади',
  'бериб',
  'тушиб',
  'ўзбек',
  'илмий',
  'бирла',
  'булиб',
  'ўтган',
  'қўйди',
  'айтиб',
  'қанча',
  'йилда',
  'зарур',
  'шаҳар',
  'йирик',
  'қисми',
  'худди',
  'ҳозир',
  'бериш',
  'бирор',
  'қадар',
  'қайта',
  'битта',
  'кичик',
  'ҳатто',
  'қўйиб',
  'айрим',
  'юқори',
  'роман',
  'дейди',
  'ёрдам',
  'талаб',
  'баъзи',
  'дедим',
  'чиқди',
  'чунки',
  'томон',
  'босиб',
  'ўзаро',
  'тушди',
  'солиб',
  'сабаб',
  'аввал',
  'йигит',
  'ортиқ',
  'қачон',
  'таоло',
  'хабар',
  'кучли',
  'олдин',
  'замон',
  'булса',
  'сизга',
  'топиб',
  'қисса',
  'йўлга',
  'қайси',
  'даври',
  'бўлиш',
  'жаҳон',
  'оддий',
  'кунда',
  'янада',
  'ўйлаб',
  'бугун',
  'бўлур',
  'гўзал',
  'юрган',
  'ишлар',
  'китоб',
  'ичига',
  'билиб',
  'сенинг',
  'айлаб',
  'савдо',
  'денгиз',
  'юзага',
  'эълон',
  'борди',
  'чуқур',
  'тутиб',
  'кўнгул',
  'ётган',
  'эркин',
  'содир',
  'ёлғиз',
  'нафас',
  'қолиб',
  'қадам',
  'қилса',
  'диний',
  'турди',
  'бўлар',
  'бирон',
  'бўлуб',
  'жойда',
  'ёнида',
  'сотиб',
  'гапни',
  'назар',
  'кутиб',
  'юксак',
  'сўнгги',
  'ҳимоя',
  'кирди',
  'ёзган',
  'бунинг',
  'улкан',
  'қийин',
  'кўрди',
  'холос',
  'ташқи',
  'олтин',
  'ердан',
  'қатор',
  'қизил',
  'бозор',
  'бунда',
  'ҳаёти',
  'сўнгра',
  'ягона',
  'кўнгли',
  'қўлга',
  'отаси',
  'хотин',
  'майда',
  'ушлаб',
  'сафар',
  'кетиб',
  'ишлаш',
  'айтди',
  'сизни',
  'шунинг',
  'ўхшаб',
  'пахта',
  'охири',
  'турар',
  'шунча',
  'солди',
  'ёнига',
  'кимга',
  'темир',
  'ҳамон',
  'кўнгил',
  'бироқ',
  'имкон',
  'қарор',
  'барпо',
  'борми',
  'онаси',
  'қўшиб',
  'андин',
  'намоз',
  'овози',
  'совуқ',
  'қулоқ',
  'савол',
  'қилур',
  'ўтади',
  'ўхшаш',
  'кулиб',
  'билим',
  'фойда',
  'вафот',
  'тирик',
  'қилар',
  'янглиғ',
  'жорий',
  'уйига',
  'қочиб',
  'ширин',
  'усули',
  'шакли',
  'ислом',
  'кураш',
  'тайёр',
  'кўзга',
  'номли',
  'шунда',
  'ўзида',
  'кўриш',
  'сўраб',
  'айнан',
  'жойга',
  'келса',
  'бошка',
  'туман',
  'ҳақда',
  'қонун',
  'булар',
  'осмон',
  'юзига',
  'тилга',
  'билиш',
  'шамол',
  'топиш',
  'ҳадис',
  'йўлда',
  'топди',
  'аҳоли',
  'мисол',
  'доимо',
  'тўлиқ',
  'қисқа',
  'беринг',
  'бориш',
  'майли',
  'ҳикоя',
  'болам',
  'тугри',
  'товуш',
  'воқеа',
  'биров',
  'қуруқ',
  'қолса',
  'ифода',
  'юраги',
  'олиши',
  'салом',
  'чиқиш',
  'шаҳри',
  'асари',
  'тағин',
  'иссиқ',
  'олдим',
  'эрмас',
  'ёлғон',
  'тамом',
  'айтиш',
  'келар',
  'айлар',
  'ишонч',
  'жоним',
  'англаб',
  'дебди',
  'зарар',
  'вақти',
  'бурун',
  'қўйиш',
  'эгаси',
  'орада',
  'юзини',
  'ёшлар',
  'оппоқ',
  'ҳалок',
  'тарих',
  'инглиз',
  'бекор',
  'холда',
  'демак',
  'ўтмай',
  'нозик',
  'секин',
  'модда',
  'сувга',
  'десам',
  'театр',
  'етган',
  'кетар',
  'овқат',
  'маъно',
  'ҳолат',
  'ҳуқуқ',
  'насиб',
  'эркак',
  'девор',
  'ўткир',
  'нефть',
  'рангли',
  'зоҳир',
  'борар',
  'ёзади',
  'қоғоз',
  'узбек',
  'кўчиб',
  'инкор',
  'қуриб',
  'гуруҳ',
  'ўғлим',
  'эрмиш',
  'сариқ',
  'қилинг',
  'узаро',
  'ишора',
  'баҳор',
  'тавба',
  'лаҳза',
  'қилма',
  'халқи',
  'руҳий',
  'четга',
  'раиси',
  'спорт',
  'гарчи',
  'бироз',
  'халос',
  'кумуш',
  'гуноҳ',
  'кесиб',
  'эрдим',
  'балиқ',
  'олмай',
  'туриш',
  'узига',
  'қўшни',
  'содда',
  'етади',
  'ҳисса',
  'сўзни',
  'этиши',
  'сифат',
  'қуриш',
  'қотиб',
  'ортиб',
  'кимса',
  'ёмғир',
  'қаранг',
  'кийиб',
  'хамда',
  'устун',
  'сезиб',
  'хосил',
  'эллик',
  'бўлак',
  'ишини',
  'тузиш',
  'сувда',
  'жамоа',
  'ҳалол',
  'юлдуз',
  'кулди',
  'қўшиқ',
  'ундай',
  'солик',
  'иложи',
  'қизим',
  'таниш',
  'юзида',
  'боқиб',
  'ижоди',
  'тўлиб',
  'кўзим',
  'қўшма',
  'излаб',
  'тараф',
  'берса',
  'қолар',
  'сайин',
  'маҳал',
  'эслаб',
  'бемор',
  'уруши',
  'собиқ',
  'суриб',
  'йўқми',
  'ҳужум',
  'келин',
  'ваъда',
  'мулки',
  'ишдан',
  'идрок',
  'ҳавас',
  'асоси',
  'қулай',
  'бунёд',
  'мерос',
  'алоқа',
  'кириш',
  'қалин',
  'қўшин',
  'қалам',
  'ғазал',
  'асрда',
  'аччиқ',
  'фалак',
  'ўсади',
  'уйида',
  'комил',
  'ҳаром',
  'гапга',
  'ойида',
  'булиш',
  'хоним',
  'берар',
  'текис',
  'мунча',
  'солиш',
  'олмас',
  'булди',
  'қазиб',
  'айтинг',
  'ҳануз',
  'ўттиз',
  'борки',
  'ухлаб',
  'ўрмон',
  'тутди',
  'босди',
  'қолиш',
  'авлод',
  'тухум',
  'келиш',
  'ўртоқ',
  'сузиб',
  'йилга',
  'товар',
  'чиқар',
  'ерлар',
  'ўзича',
  'йўлни',
  'яққол',
  'чекиб',
  'қизиқ',
  'ғойиб',
  'экани',
  'эдики',
  'совет',
  'домла',
  'чопиб',
  'тезда',
  'солиқ',
  'ёрқин',
  'нечта',
  'дарди',
  'қодир',
  'кетиш',
  'қизни',
  'парда',
  'вояга',
  'кетса',
  'қилай',
  'қилич',
  'факат',
  'немис',
  'овора',
  'сарой',
  'юради',
  'кўзда',
  'юкори',
  'юмшоқ',
  'бегим',
  'ошкор',
  'ўтгач',
  'зотга',
  'нафар',
  'изҳор',
  'кимни',
  'нозил',
  'миниб',
  'сирли',
  'майин',
  'манба',
  'йиғиб',
  'фоизи',
  'йироқ',
  'шулар',
  'тушса',
  'сувни',
  'жаноб',
  'олими',
  'касал',
  'замин',
  'тилда',
  'тунда',
  'десанг',
  'ҳажми',
  'ишлов',
  'қалай',
  'истар',
  'лойиқ',
  'кўкка',
  'ҳафта',
  'физик',
  'дейиш',
  'кекса',
  'шубҳа',
  'кўрса',
  'иймон',
  'ўтиши',
  'муҳит',
  'фикри',
  'мулла',
  'андоқ',
  'тегиб',
  'шарти',
  'кечиб',
  'қалби',
  'равон',
  'қадаҳ',
  'караб',
  'хаёли',
  'ётади',
  'кўруб',
  'ғолиб',
  'яхлит',
  'ернинг',
  'исмли',
  'ходим',
  'илғор',
  'гумон',
  'шоири',
  'бўлинг',
  'дарак',
  'англаш',
  'сотиш',
  'ривож',
  'турфа',
  'итоат',
  'магар',
  'шошиб',
  'босим',
  'қасам',
  'даъво',
  'гувоҳ',
  'пухта',
  'ташки',
  'меҳри',
  'устоз',
  'содиқ',
  'соқий',
  'ҳоким',
  'идора',
  'ҳаққи',
  'менда',
  'ўйнаб',
  'севги',
  'ҳисоб',
  'пулни',
  'тизим',
  'сезди',
  'лизинг',
  'ўлган',
  'учраб',
  'бузиб',
  'чиқса',
  'етмиш',
  'кифоя',
  'қараш',
  'амаки',
  'беҳад',
  'сокин',
  'ибрат',
  'зўрға',
  'келур',
  'янгича',
  'эшиги',
  'банда',
  'ҳовли',
  'истаб',
  'ишига',
  'кўзум',
  'куйиб',
  'оқшом',
  'бошим',
  'қўйинг',
  'чоғда',
  'аҳвол',
  'ишнинг',
  'ойлик',
  'сарви',
  'ғазаб',
  'драма',
  'булут',
  'тиниқ',
  'подшо',
  'қизга',
  'қайда',
  'макон',
  'узвий',
  'билар',
  'лирик',
  'теран',
  'мадад',
  'ғариб',
  'пайти',
  'тилла',
  'афғон',
  'дерди',
  'яраша',
  'иқлим',
  'қалъа',
  'мудом',
  'тушти',
  'юзаси',
  'савоб',
  'нажот',
  'хитоб',
  'йилги',
  'калта',
  'ҳожат',
  'турса',
  'тутиш',
  'тилаб',
  'афзал',
  'оғриқ',
  'кимки',
  'тарзи',
  'тўкиб',
  'нишон',
  'хароб',
  'сукут',
  'бояги',
  'улким',
  'кийим',
  'сохта',
  'билди',
  'қувиб',
  'уйдан',
  'нуқта',
  'белги',
  'ниҳон',
  'уруғи',
  'оқими',
  'бўлма',
  'вазир',
  'нобуд',
  'ватан',
  'қанот',
  'ўсган',
  'ботиб',
  'кофир',
  'ёшида',
  'кўрар',
  'қуйиб',
  'жангда',
  'дўсти',
  'сўзга',
  'мойил',
  'турри',
  'териб',
  'нафис',
  'дарду',
  'олгач',
  'кучга',
  'аскар',
  'офтоб',
  'фарқи',
  'жадал',
  'этмай',
  'ислоҳ',
  'ўнлаб',
  'тайин',
  'сопол',
  'лаъли',
  'топинг',
  'ашула',
  'борса',
  'нукта',
  'жонли',
  'мавзу',
  'фарёд',
  'мирзо',
  'никоҳ',
  'чироқ',
  'ҳолга',
  'тикиб',
  'молия',
  'кузда',
  'қатъи',
  'хаста',
  'санаб',
  'бунча',
  'базми',
  'урган',
  'нохуш',
  'мақом',
  'дамда',
  'нодир',
  'холис',
  'чўзиб',
  'топти',
  'исбот',
  'сажда',
  'катга',
  'олами',
  'нечун',
  'узини',
  'далил',
  'қисиб',
  'қозоқ',
  'асбоб',
  'қадим',
  'акаси',
  'фироқ',
  'кўринг',
  'тушар',
  'отини',
  'келинг',
  'сарфи',
  'жувон',
  'тожик',
  'чикди',
  'укаси',
  'четда',
  'бежиз',
  'диёри',
  'жисми',
  'отлар',
  'жўнаб',
  'амири',
  'юзлаб',
  'чўчиб',
  'кўҳна',
  'бўпти',
  'аёлга',
  'нусха',
  'чўкиб',
  'ўйлар',
  'сабоқ',
  'утган',
  'пўлат',
  'висол',
  'отлиқ',
  'дўзах',
  'бағри',
  'харид',
  'чизик',
  'десак',
  'олсак',
  'ўлғай',
  'парча',
  'хайли',
  'дадам',
  'анави',
  'безак',
  'армон',
  'ақлли',
  'қатла',
  'ойдан',
  'тийра',
  'улчаш',
  'шаҳид',
  'этмиш',
  'ахлоқ',
  'жигар',
  'сочиб',
  'нуқул',
  'сингиб',
  'сонли',
  'табиб',
  'бўйин',
  'карим',
  'илдиз',
  'қурол',
  'тўлди',
  'ўлими',
  'кезиб',
  'этник',
  'силаб',
  'сурди',
  'телба',
  'уйнинг',
  'атроф',
  'тулки',
  'бахти',
  'олдик',
  'камол',
  'фасли',
  'карам',
  'томчи',
  'барги',
  'ошади',
  'учида',
  'ҳамки',
  'нодон',
  'тутуб',
  'жангга',
  'мингга',
  'тириш',
  'қоқиб',
  'очган',
  'маъюс',
  'тўсиб',
  'зарба',
  'айтар',
  'оқади',
  'ҳукми',
  'бўлим',
  'улуши',
  'баҳри',
  'парво',
  'ўқиди',
  'пиёла',
  'ёқдан',
  'зарра',
  'шерик',
  'кўмир',
  'дадил',
  'ўлмиш',
  'изчил',
  'пиёда',
  'карши',
  'мўмин',
  'чукур',
  'хунук',
  'золим',
  'инсоф',
  'фирма',
  'зиёда',
  'бисёр',
  'пичоқ',
  'паноҳ',
  'совчи',
  'туташ',
  'чизиқ',
  'гўёки',
  'кўзни',
  'актив',
  'қорин',
  'уйлар',
  'севиб',
  'берур',
  'туйғу',
  'совға',
  'инъом',
  'нечук',
  'топар',
  'топса',
  'опера',
  'эрига',
  'дучор',
  'ёшлик',
  'ҳазил',
  'ҳақли',
  'этдим',
  'қабри',
  'хамма',
  'океан',
  'қорни',
  'туринг',
  'таниб',
  'тегди',
  'усади',
  'ўтмиш',
  'сурат',
  'мушук',
  'хатни',
  'хазон',
  'зумда',
  'фақир',
  'нияти',
  'тарки',
  'ортга',
  'мисли',
  'одати',
  'музей',
  'сўроқ',
  'ўлчаш',
  'ҳунар',
  'чикиш',
  'утади',
  'суяги',
  'бобда',
  'чархи',
  'кулги',
  'қочди',
  'ҳушёр',
  'атиги',
  'кечки',
  'фалон',
  'жойни',
  'ошган',
  'тутун',
  'асраб',
  'айлай',
  'эҳсон',
  'чўкди',
  'ўлмас',
  'буриб',
  'билса',
  'ихлос',
  'етмай',
  'ғалла',
  'йўғон',
  'отнинг',
  'юриши',
  'ишқинг',
  'саҳар',
  'аёлни',
  'шамъи',
  'кечди',
  'пушти',
  'дурур',
  'тилар',
  'аҳмоқ',
  'ерида',
  'боқди',
  'тонна',
  'қойил',
  'гилам',
  'тоифа',
  'ондин',
  'ўсиши',
  'таянч',
  'хурмо',
  'услуб',
  'талай',
  'закот',
  'оптик',
  'сувли',
  'устки',
  'афсус',
  'минут',
  'лотин',
  'дайри',
  'ночор',
  'чучук',
  'қайғу',
  'воқиф',
  'бузуқ',
  'қонли',
  'бўлай',
  'зулфи',
  'жилва',
  'кўзгу',
  'рақам',
  'етмас',
  'кенжа',
  'тутар',
  'жонни',
  'пулга',
  'тахта',
  'босма',
  'ўлсам',
  'тақиб',
  'айвон',
  'қирол',
  'чолғу',
  'банки',
  'моҳир',
  'олсин',
  'вазни',
  'шароб',
  'битим',
  'катор',
  'жонон',
  'татар',
  'вужуд',
  'олмоқ',
  'шукур',
  'боиси',
  'қишда',
  'хитой',
  'бобом',
  'этмас',
  'сиқиб',
];
