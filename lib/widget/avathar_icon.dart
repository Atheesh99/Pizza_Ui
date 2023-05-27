import 'package:flutter/material.dart';

bool ispressed = false;

class CircularavatharIcon extends StatelessWidget {
  CircularavatharIcon({
    super.key,
    required this.icon,
  });
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey.withOpacity(.2),
          radius: 15,
          child: Icon(
            icon,
            size: 18,
            color: Colors.grey,
          ),
        ),
        if (ispressed)
          Icon(
            Icons.check_circle,
            color: Colors.green,
            size: 11,
          )
      ],
    );
  }
}
