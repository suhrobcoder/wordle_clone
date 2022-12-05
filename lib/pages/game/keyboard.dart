import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:wordle_clone/components/keyboard_button.dart';
import 'package:wordle_clone/localizations.dart';
import 'package:wordle_clone/models/guess.dart';
import 'package:wordle_clone/utils/constants.dart';

const keys = [
  ["q", "e", "r", "t", "y", "u", "i", "o", "p", "o‘", "g‘"],
  ["a", "s", "d", "f", "g", "h", "j", "k", "l", "sh"],
  ["z", "x", "v", "b", "n", "m", "ch", "ng", "<"],
];

class Keyboard extends StatelessWidget {
  const Keyboard({
    super.key,
    required this.usedKeys,
    required this.keyPressed,
  });

  final MatchingUsedKey usedKeys;
  final void Function(String) keyPressed;

  @override
  Widget build(BuildContext context) {
    final maxKeyCount = keys.map((e) => e.length).reduce(max);
    final size = MediaQuery.of(context).size;
    return Column(
      children: keys.map((row) {
        final width = size.width / maxKeyCount - 4;
        final height = width * 1.3;
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: row
              .map((key) => KeyboardButton(
                    name: context.locale == uzLatin
                        ? key
                        : translit.unTranslit(source: key),
                    color: AppColors.getColorByMatch(usedKeys[key]),
                    width: width,
                    height: height,
                    onClick: () => keyPressed(key),
                  ))
              .toList(),
        );
      }).toList(),
    );
  }
}
