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
  'cigar',
  'rebut',
  'sissy',
  'humph',
  'awake',
  'blush',
  'focal',
  'evade',
];

const _words = [
  'cigar',
  'rebut',
  'sissy',
  'humph',
  'awake',
  'blush',
  'focal',
  'evade',
  'naval',
  'serve',
  'heath',
  'dwarf',
  'model',
  'karma',
  'stink',
  'grade',
  'quiet',
];
