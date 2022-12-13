import 'package:flutter_test/flutter_test.dart';
import 'package:wordle_clone/utils/translit.dart';

void main() {
  test("complicated words", () {
    expect("Ер", Translit.latinToCyrillic(source: "Yer"));
    expect("Шаҳар", Translit.latinToCyrillic(source: "Shahar"));
    expect("Қаер", Translit.latinToCyrillic(source: "Qayer"));
  });
}
