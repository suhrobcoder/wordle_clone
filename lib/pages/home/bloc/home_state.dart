part of 'home_bloc.dart';

@immutable
class HomeState {
  final int coins;

  const HomeState({
    required this.coins,
  });

  const HomeState.initial() : coins = 0;

  HomeState copyWith({
    int? coins,
  }) {
    return HomeState(
      coins: coins ?? this.coins,
    );
  }
}
