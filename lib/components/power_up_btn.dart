import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wordle_clone/utils/constants.dart';

class PowerUpBtn extends StatelessWidget {
  const PowerUpBtn({
    Key? key,
    required this.iconPath,
    required this.price,
    required this.onPressed,
  }) : super(key: key);

  final String iconPath;
  final int price;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      clipBehavior: Clip.none,
      children: [
        IconButton(
          onPressed: onPressed,
          iconSize: 16,
          icon: SvgPicture.asset(
            iconPath,
            width: 32,
            height: 32,
            color: theme.colorScheme.onBackground,
          ),
        ),
        Positioned(
          right: -8,
          bottom: -4,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 2),
            decoration: ShapeDecoration(
              color: Theme.of(context).colorScheme.surfaceVariant,
              shape: const StadiumBorder(),
            ),
            child: Row(
              children: [
                Text(
                  price.toString(),
                  style: const TextStyle(fontSize: 12),
                ),
                const SizedBox(width: 2),
                Image.asset(
                  'assets/icons/coin.png',
                  width: 12,
                  height: 12,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
