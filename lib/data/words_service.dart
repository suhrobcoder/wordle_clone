import 'package:injectable/injectable.dart';

@Injectable()
class WordsService {
  List<String> getWordList() {
    return _words;
  }

  List<String> getAnswers() {
    return _answers;
  }
}

const _answers = [
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

const _words = [
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
