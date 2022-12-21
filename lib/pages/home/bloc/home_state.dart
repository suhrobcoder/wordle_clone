part of 'home_bloc.dart';

@immutable
class HomeState extends Equatable {
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

  @override
  List<Object?> get props => [coins];
}
