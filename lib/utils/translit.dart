class Translit {
  static final Map<String, String> _latCyr = {
    "A": "А",
    "B": "Б",
    "V": "В",
    "G": "Г",
    "D": "Д",
    "Ye": "Е",
    "YE": "Е",
    "J": "Ж",
    "Z": "З",
    "I": "И",
    "Y": "Й",
    "K": "К",
    "L": "Л",
    "M": "М",
    "N": "Н",
    "O": "О",
    "P": "П",
    "R": "Р",
    "S": "С",
    "T": "Т",
    "U": "У",
    "F": "Ф",
    "X": "Х",
    "Ts": "Ц",
    "TS": "Ц",
    "Ch": "Ч",
    "CH": "Ч",
    "Sh": "Ш",
    "SH": "Ш",
    "EE": "Э",
    "Yu": "Ю",
    "YU": "Ю",
    "Ya": "Я",
    "YA": "Я",
    "G'": "Ғ",
    "G`": "Ғ",
    "G‘": "Ғ",
    "O'": "Ў",
    "O`": "Ў",
    "O‘": "Ў",
    "Yo": "Ё",
    "YO": "Ё",
    "Q": "Қ",
    "H": "Ҳ",
    "a": "а",
    "b": "б",
    "v": "в",
    "g": "г",
    "d": "д",
    "ye": "е",
    "yE": "е",
    "j": "ж",
    "z": "з",
    "i": "и",
    "y": "й",
    "k": "к",
    "l": "л",
    "m": "м",
    "n": "н",
    "o": "о",
    "p": "п",
    "r": "р",
    "s": "с",
    "t": "т",
    "u": "у",
    "f": "ф",
    "x": "х",
    "ts": "ц",
    "tS": "ц",
    "ch": "ч",
    "cH": "ч",
    "sh": "ш",
    "sH": "ш",
    "'": "ъ",
    "’": "ъ",
    "`": "ъ",
    "ee": "э",
    "eE": "э",
    "e": "е",
    "yu": "ю",
    "yU": "ю",
    "ya": "я",
    "yA": "я",
    "o'": "ў",
    "o`": "ў",
    "o‘": "ў",
    "q": "қ",
    "g'": "ғ",
    "g`": "ғ",
    "g‘": "ғ",
    "yo": "ё",
    "yO": "ё",
    "h": "ҳ",
  };

  static String latinToCyrillic({required String source}) {
    var regExp = RegExp(
      r'([a-z]+)',
      caseSensitive: false,
      multiLine: true,
    );

    if (!regExp.hasMatch(source)) return source;

    var result = "";

    for (var i = 0, len = source.length; i < source.length; i++) {
      var curLetter = source[i];
      if (curLetter == 'e' || curLetter == 'E') {
        if (i == 0 || " -.,\n)('?/".contains(source[i - 1])) {
          curLetter += curLetter;
        }
      }
      var pos1Txt = "";
      var pos2Txt = "";
      try {
        pos1Txt = source[i + 1];
        pos2Txt = source[i + 2];
      } catch (_) {}
      if (!((curLetter == 'y' || curLetter == 'Y') &&
              (pos2Txt == "'" || pos2Txt == "‘" || pos2Txt == "`")) &&
          i != len - 1 &&
          !(curLetter == 't' && pos1Txt == 's' && source[i + 3] == 'z')) {
        var dualLetter = _latCyr[curLetter + pos1Txt];
        if (dualLetter != null) {
          result += dualLetter;
          i++;
          continue;
        }
      }
      result += _latCyr[curLetter] ?? curLetter;
    }
    return result;
  }
}
