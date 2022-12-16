import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wordle_clone/utils/constants.dart';

@singleton
class SharedPrefs {
  final SharedPreferences _sharedPreferences;

  final StreamController<int> _coinController = StreamController();
  late Stream<int> listenCoins = _coinController.stream.asBroadcastStream();

  SharedPrefs(this._sharedPreferences) {
    _coinController.add(coins);
  }

  int get coins => _sharedPreferences.getInt(coinsKey) ?? initialCoins;

  Future<void> setCoins(int coins) async {
    await _sharedPreferences.setInt(coinsKey, coins);
    _coinController.add(this.coins);
  }
}

const coinsKey = "coins_key";
