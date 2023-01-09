import 'package:flutter/material.dart';
import 'package:wordle_clone/utils/constants.dart';

class CoinWidget extends StatelessWidget {
  const CoinWidget({
    Key? key,
    required this.coins,
  }) : super(key: key);

  final String coins;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 108,
      height: 32,
      decoration: ShapeDecoration(
        shape: const StadiumBorder(),
        color: Theme.of(context).colorScheme.surfaceVariant,
      ),
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 100),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return SlideTransition(
                position: Tween<Offset>(
                        begin: const Offset(0.0, -0.5),
                        end: const Offset(0.0, 0.0))
                    .animate(animation),
                child: child,
              );
            },
            child: Text(
              key: ValueKey(coins),
              coins,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            right: -12,
            top: -2,
            bottom: -2,
            child: Image.asset("assets/icons/coin.png"),
          ),
        ],
      ),
    );
  }
}
