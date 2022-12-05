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
  'faqat',
  'parta',
];

const _words = [
  'qiziq',
  'tarix',
  'qavat',
  'yetti',
  'boshqa',
];
