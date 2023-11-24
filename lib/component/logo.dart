import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'images/logo_new.png',
      height: 120,
      width: 120,
    );
  }
}
