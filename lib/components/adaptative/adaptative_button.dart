import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptativeButton extends StatelessWidget {
  final String label;
  final void Function()? onPressed;
  // Também é possivel utilizar VoidCallBack para instanciar a funcao
  // final VoidCallback onPressed;

  const AdaptativeButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            onPressed: onPressed,
            child: Text(label),
            color: Theme.of(context).colorScheme.primary,
            padding: const EdgeInsets.symmetric(
              horizontal: 20
            ),
          )
        : ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Theme.of(context).colorScheme.primary,
            ),
            onPressed: onPressed,
            child: Text(label),
          );
  }
}
