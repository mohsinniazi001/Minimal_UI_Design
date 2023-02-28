import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff21bfbd),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: (() {}),
                  icon: const Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 130,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: ((() {})),
                      icon: const Icon(Icons.filter_list),
                      color: Colors.white,
                    ),
                    IconButton(
                      onPressed: ((() {})),
                      icon: const Icon(Icons.menu),
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Row(
              children: const [
                Text(
                  'Healthy',
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Food',
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Montserrat',
                      // fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            height: MediaQuery.of(context).size.height - 185,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(75),
                )),
            child: ListView(
              // primary: false,
              padding: const EdgeInsets.only(left: 25, right: 25),
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 300,
                    child: ListView(children: [
                      buildFooditems(
                          "assests/plate1.png", "Salmon Food", '\$24.00'),
                      buildFooditems(
                          "assests/plate2.png", "Spring Dish", '\$22.00'),
                      buildFooditems(
                          "assests/plate3.png", "Avocado Dish", '\$24.00'),
                      buildFooditems(
                          "assests/plate4.png", "Berry Bowl", '\$18.00'),
                    ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(
                            style: BorderStyle.solid,
                            color: Colors.grey,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(
                            style: BorderStyle.solid,
                            color: Colors.grey,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.shopping_cart,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        // width: 80,
                        // height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            style: BorderStyle.solid,
                            color: Colors.grey,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: TextButton(
                            onPressed: (() {}),
                            child: const Text(
                              'Check Out',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                // fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFooditems(String imgPath, String foodTitle, String price) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10, top: 10),
      child: InkWell(
        onTap: () {
          print("you click on inkwelll");
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Hero(
                      tag: imgPath,
                      child: Image(
                        image: AssetImage(imgPath),
                        fit: BoxFit.cover,
                        height: 70,
                        width: 70,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        foodTitle,
                        style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        price,
                        style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15,
                          // fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            IconButton(
              onPressed: (() {
                print('you tapped add button');
              }),
              icon: const Icon(Icons.add),
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
