import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wordle_clone/data/shared_prefs.dart';

void main() {
  late SharedPrefs sharedPrefs;

  setUp(() async {
    SharedPreferences.setMockInitialValues({coinsKey: 100});
    sharedPrefs = SharedPrefs(await SharedPreferences.getInstance());
  });

  test('get coins', () async {
    await sharedPrefs.setCoins(100);
    expect(sharedPrefs.coins, 100);
  });

  test('listen coins', () async {
    expect(sharedPrefs.listenCoins, emitsInOrder([100]));
    await sharedPrefs.setCoins(200);
    expect(sharedPrefs.listenCoins, emitsInOrder([200]));
  });
}
