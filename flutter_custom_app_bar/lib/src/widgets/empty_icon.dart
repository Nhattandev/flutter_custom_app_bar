import 'package:flutter/material.dart';

class EmptyIcon extends StatelessWidget {
  final String iconPath;

  const EmptyIcon({Key key, this.iconPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Image.asset(iconPath ?? ''),
      onPressed: null,
    );
  }
}
