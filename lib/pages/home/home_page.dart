import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wordle_clone/components/animated_button.dart';
import 'package:wordle_clone/components/coin_widget.dart';
import 'package:wordle_clone/components/toggle_switch.dart';
import 'package:wordle_clone/di/init_get_it.dart';
import 'package:wordle_clone/localizations.dart';
import 'package:wordle_clone/pages/game/game_page.dart';
import 'package:wordle_clone/pages/home/bloc/home_bloc.dart';
import 'package:wordle_clone/utils/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return BlocProvider(
      create: (_) => getIt<HomeBloc>(),
      child: Scaffold(
        body: SafeArea(
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Row(
                        children: [
                          ToggleSwitch(
                            labels: const ["Lotin", "Кирил"],
                            initialLabelIndex:
                                localizations.indexOf(context.locale),
                            activeBgColor: [theme.colorScheme.surfaceVariant],
                            inactiveBgColor: theme.colorScheme.surface,
                            inactiveFgColor: theme.colorScheme.onSurface,
                            customTextStyles: const [
                              TextStyle(fontSize: 16),
                            ],
                            minWidth: 72,
                            onToggle: (index) =>
                                context.setLocale(localizations[index ?? 0]),
                          ),
                          const Spacer(),
                          CoinWidget(coins: state.coins.toString()),
                        ],
                      ),
                    ),
                    const Spacer(),
                    AnimatedButton(
                      width: size.width - 40,
                      color: theme.colorScheme.primary,
                      child: Text(
                        "play".tr().toUpperCase(),
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: theme.colorScheme.onPrimary,
                        ),
                      ),
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const GamePage()),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
