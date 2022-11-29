import 'package:flutter/material.dart';

class BackspaceButton extends StatelessWidget {
  const BackspaceButton({super.key, required this.onClick});

  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Icon(Icons.backspace_rounded),
    );
  }
}
