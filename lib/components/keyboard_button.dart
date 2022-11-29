import 'package:flutter/material.dart';

class KeyboardButton extends StatelessWidget {
  const KeyboardButton(
      {super.key,
      required this.name,
      required this.color,
      required this.width,
      required this.height,
      required this.onClick});

  final String name;
  final Color color;
  final double width;
  final double height;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: name == "<" ? width * 1.5 : width,
      height: height,
      margin: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: color,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: onClick,
        child: Center(
          child: name == "<"
              ? const Icon(Icons.backspace_rounded)
              : Text(
                  name.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
        ),
      ),
    );
  }
}
