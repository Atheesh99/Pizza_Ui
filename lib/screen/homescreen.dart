import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pizza/widget/appbar_icon.dart';
import 'package:pizza/widget/container.dart';
import 'package:pizza/widget/curve_container.dart';
import 'package:pizza/widget/first_card.dart';
import 'package:pizza/widget/icons_row.dart';
import 'package:pizza/widget/open_container.dart';
import 'package:pizza/widget/secon_card.dart';
import 'package:pizza/widget/text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: Color.fromARGB(255, 218, 8, 8),
          statusBarIconBrightness: Brightness.dark),
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppbarIcons(icon: Icons.arrow_back_ios_rounded),
                AppbarIcons(icon: Icons.shopping_cart_outlined),
              ],
            ),
            SizedBox(
              width: double.infinity,
              height: 430,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 10),
                    child: SizedBox(
                      height: 170,
                      width: double.infinity,
                      child: Image.asset('assets/pizza_2.jpg'),
                    ),
                  ),
                  Center(
                    heightFactor: 2.5,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Expanded(
                            child: Divider(
                              thickness: 3,
                              color: Color.fromARGB(255, 186, 0, 81),
                            ),
                          ),
                          timeContiner(),
                          const Expanded(
                            child: Divider(
                              thickness: 2.5,
                              color: Color.fromARGB(255, 186, 0, 81),
                            ),
                          ),
                          papaJohnsImg(),
                          const Expanded(
                            child: Divider(
                              thickness: 2.5,
                              color: Color.fromARGB(255, 186, 0, 81),
                            ),
                          ),
                          const OpenContainer(),
                          const Expanded(
                            child: Divider(
                              thickness: 2.5,
                              endIndent: .1,
                              color: Color.fromARGB(255, 186, 0, 81),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const CurveContainer(),
                  const ContainerCurve(),
                  const Textpapajohns(),
                  const IconsRow(),
                ],
              ),
            ),
            const FireCard(),
            const SecondcardListview(),
          ],
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(right: 10, bottom: 25),
          child: FloatingActionButton(
            backgroundColor: Color.fromARGB(255, 186, 0, 81),
            onPressed: () {},
            child: const Icon(
              Icons.support_agent_outlined,
              size: 35,
            ),
          ),
        ),
      ),
    );
  }

  Container papaJohnsImg() {
    return Container(
      width: 180,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.white,
        image: const DecorationImage(
          image: AssetImage('assets/pizza_johns.jpg'),
          fit: BoxFit.contain,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(90)),
        border: Border.all(
          color: const Color.fromARGB(255, 186, 0, 81),
          width: 2.5,
        ),
      ),
    );
  }

  Container timeContiner() {
    return Container(
      width: 110,
      height: 30,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: Color.fromARGB(255, 186, 0, 81),
      ),
      child: Row(
        children: const [
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.access_time_filled,
            color: Colors.white,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "12.30- 00.30",
            style: TextStyle(color: Colors.white, fontSize: 11),
          )
        ],
      ),
    );
  }
}
