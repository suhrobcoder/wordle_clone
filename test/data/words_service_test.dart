import 'package:wordle_clone/data/words_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final wordsService = WordsService();

  group('getLatinWords', () {
    test(
      "should return a list of words that contains only latin letters",
      () {
        final words = wordsService.getLatinWordList();
        expect(words, everyElement(matches(r'^[a-zA-Z‘]+$')));
      },
    );
    test(
      "all words in answer list should also be in words list",
      () {
        final words = wordsService.getLatinWordList();
        final answers = wordsService.getLatinAnswers();
        expect(answers, everyElement(isIn(words)));
      },
    );
    test(
      "all words in words list length should be 5",
      () {
        final words = wordsService.getLatinWordList();
        for (var word in words) {
          expect(_getLengthOfWord(word), 5);
        }
      },
    );
  });

  group('getCyrillicWords', () {
    test(
      "should return a list of words that contains only cyrillic letters",
      () {
        final words = wordsService.getCyrillicWordList();
        expect(words, everyElement(matches(r'^[а-яА-ЯўЎғҒқҚҳҲёЁ]+$')));
      },
    );
    test(
      "all words in answer list should also be in words list",
      () {
        final words = wordsService.getCyrillicWordList();
        final answers = wordsService.getCyrillicAnswers();
        expect(answers, everyElement(isIn(words)));
      },
    );
    test(
      "all words in words list length should be 5",
      () {
        final words = wordsService.getCyrillicWordList();
        for (var word in words) {
          expect(_getLengthOfWord(word), 5);
        }
      },
    );
  });
}

int _getLengthOfWord(String word) {
  word = word.replaceAll('o‘', '4');
  word = word.replaceAll('g‘', '5');
  word = word.replaceAll('sh', '1');
  word = word.replaceAll('ch', '2');
  word = word.replaceAll('ng', '3');
  word = word.replaceAll('нг', '6');
  return word.length;
}
