import 'package:flutter/material.dart';
import 'package:pizza/widget/avathar_icon.dart';

class IconsRow extends StatefulWidget {
  const IconsRow({
    super.key,
  });

  @override
  State<IconsRow> createState() => _IconsRowState();
}

class _IconsRowState extends State<IconsRow> {
  void isToggle() {
    setState(() {
      ispressed = !ispressed;
    });
  }

  void ispress() {
    setState(() {
      ispres = !ispres;
    });
  }

  bool ispres = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(top: 365, left: 110),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                ispress();
              },
              child: Icon(
                ispres ? Icons.favorite_border_outlined : Icons.favorite,
                size: 30,
                color: ispres ? Colors.grey : Color.fromARGB(255, 186, 0, 81),
              ),
            ),
            const SizedBox(
              width: 7,
            ),
            Container(
              width: 130,
              height: 40,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 247, 247, 247),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                      onTap: () {
                        isToggle();
                      },
                      child: CircularavatharIcon(icon: Icons.construction)),
                  GestureDetector(
                      onTap: () {
                        isToggle();
                      },
                      child: CircularavatharIcon(
                          icon: Icons.card_travel_outlined)),
                  GestureDetector(
                      onTap: () {
                        isToggle();
                      },
                      child: CircularavatharIcon(icon: Icons.pedal_bike)),
                ],
              ),
            ),
            const SizedBox(
              width: 7,
            ),
            const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 186, 0, 81),
              radius: 20,
              child: Center(
                  child: Icon(
                Icons.share,
                color: Colors.white,
              )),
            ),
          ],
        ),
      ),
    );
  }
}
