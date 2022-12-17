import 'package:flutter/material.dart';
import 'package:wordle_clone/utils/constants.dart';

class PowerUpBtn extends StatelessWidget {
  const PowerUpBtn({
    Key? key,
    required this.imagePath,
    required this.price,
    required this.onPressed,
  }) : super(key: key);

  final String imagePath;
  final int price;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Image.asset(imagePath),
        ),
        Positioned(
          right: -8,
          bottom: -4,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 2),
            decoration: const ShapeDecoration(
              color: AppColors.absent,
              shape: StadiumBorder(),
            ),
            child: Row(
              children: [
                Text(
                  price.toString(),
                  style: const TextStyle(fontSize: 12, color: Colors.white),
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
