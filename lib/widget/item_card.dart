import 'package:flutter/material.dart';

class Itemcard extends StatelessWidget {
  const Itemcard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.all(10),
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Card(
        child: Center(
          child: Column(
            children: [
              Container(
                height: 120,
                width: 160,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Image.asset('assets/piza_3.jpg'),
              ),
              const Text(
                'Pepperoni Pizza XL',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 4,
              ),
              const Text(
                'Double Beef pepperoni',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 194, 194, 194)),
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: const [
                  Text(
                    'price :',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                  Text(
                    " 99.80",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 186, 0, 81)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
