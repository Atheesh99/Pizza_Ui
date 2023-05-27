import 'package:flutter/material.dart';

class ContainerCurve extends StatelessWidget {
  const ContainerCurve({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 6,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8, left: 300),
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
            children: [
              const Center(
                heightFactor: 2,
                child: Text(
                  " Estmatated time \n   for arrival is",
                  style: TextStyle(fontSize: 9),
                ),
              ),
              CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 186, 0, 81),
                radius: 30,
                child: Center(
                  child: Column(
                    children: const [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '44',
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'Minute',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      )
                    ],
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
