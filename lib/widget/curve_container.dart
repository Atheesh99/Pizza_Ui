import 'package:flutter/material.dart';

class CurveContainer extends StatelessWidget {
  const CurveContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 6,
      child: Padding(
        padding: const EdgeInsets.only(right: 280, bottom: 10),
        child: Container(
          margin: EdgeInsets.only(top: 180),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(35),
              bottomLeft: Radius.circular(35),
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            color: Color.fromARGB(255, 244, 244, 244),
          ),
          height: 120,
          width: 80,
          child: Column(
            children: const [
              Center(
                heightFactor: 1.5,
                child: Text(
                  "  Delivery\n charge to\nyour current",
                  style: TextStyle(fontSize: 10),
                ),
              ),
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 227, 227, 227),
                radius: 28,
                child: Center(
                  child: Text(
                    '36',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
