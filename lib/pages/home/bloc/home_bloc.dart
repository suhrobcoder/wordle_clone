import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:wordle_clone/data/shared_prefs.dart';

part 'home_event.dart';
part 'home_state.dart';

@Injectable()
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final SharedPrefs _sharedPrefs;

  HomeBloc(this._sharedPrefs) : super(const HomeState.initial()) {
    on<_CoinChangedEvent>((event, emit) {
      emit(state.copyWith(coins: event.coins));
    });
    _sharedPrefs.listenCoins.listen((coins) {
      add(_CoinChangedEvent(coins));
    });
  }
}

class _CoinChangedEvent extends HomeEvent {
  final int coins;

  _CoinChangedEvent(this.coins);
}
