import 'package:flutter/material.dart';
import 'package:pizza/widget/item_card.dart';

class SecondcardListview extends StatelessWidget {
  const SecondcardListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 245,
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          color: Color.fromARGB(255, 241, 237, 237),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 11, top: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Medium Pizza',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
              ),
              Expanded(
                child: Itemcard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
