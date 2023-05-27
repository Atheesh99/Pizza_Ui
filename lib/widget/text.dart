import 'package:flutter/material.dart';

class Textpapajohns extends StatelessWidget {
  const Textpapajohns({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 310, left: 20),
        child: Column(
          children: const [
            Text(
              "Papa John's",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Hamoshava",
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            Text(
              "Hagermanit",
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
