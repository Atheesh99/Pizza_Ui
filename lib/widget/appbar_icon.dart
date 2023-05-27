import 'package:flutter/material.dart';

class AppbarIcons extends StatelessWidget {
  const AppbarIcons({
    super.key,
    required this.icon,
  });
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: 55,
        width: 55,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color.fromARGB(255, 128, 127, 127)),
        child: Icon(
          icon,
          size: 28,
          color: Colors.white,
        ),
      ),
    );
  }
}
