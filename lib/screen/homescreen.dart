import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pizza/widget/appbar_icon.dart';
import 'package:pizza/widget/container.dart';
import 'package:pizza/widget/curve_container.dart';
import 'package:pizza/widget/first_card.dart';
import 'package:pizza/widget/icons_row.dart';
import 'package:pizza/widget/open_container.dart';
import 'package:pizza/widget/secon_card.dart';

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
                  SizedBox(
                    height: 180,
                    width: double.infinity,
                    child: Image.asset('assets/pizza_2.jpg'),
                  ),
                  Center(
                    heightFactor: 4,
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
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 300, left: 20),
                      child: Column(
                        children: const [
                          Text(
                            "Papa John's",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 7,
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
                  ),
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
      width: 160,
      height: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        image: const DecorationImage(
          image: AssetImage('assets/pizza_johns.jpg'),
          fit: BoxFit.contain,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(77)),
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
