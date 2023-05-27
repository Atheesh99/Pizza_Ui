import 'package:flutter/material.dart';

class IconsRow extends StatelessWidget {
  const IconsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(top: 365, left: 110),
        child: Row(
          children: [
            const Icon(
              Icons.favorite_border_outlined,
              size: 30,
              color: Colors.grey,
            ),
            const SizedBox(
              width: 7,
            ),
            Container(
              width: 120,
              height: 40,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 237, 237, 237),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.cut_outlined,
                    size: 20,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.store_mall_directory_rounded,
                    size: 20,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.pedal_bike_outlined,
                    size: 20,
                    color: Colors.grey,
                  ),
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
