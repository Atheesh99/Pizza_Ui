import 'package:flutter/material.dart';

class OpenContainer extends StatelessWidget {
  const OpenContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 30,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: Color.fromARGB(242, 173, 185, 4),
      ),
      child: const Center(
          child: Text(
        'OPEN',
        style: TextStyle(
            color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),
      )),
    );
  }
}
