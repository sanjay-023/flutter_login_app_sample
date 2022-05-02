import 'package:flutter/material.dart';
import 'package:login/screen_drawer.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          'assets/images/pinfu-title-logo.png',
          width: 90,
          height: 90,
        ),
        actions: const [
          Icon(
            Icons.search,
          )
        ],
      ),
      drawer: const ScreenDrawer(),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/banner1.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 13,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Trending',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[700]),
                  ),
                  TextButton(onPressed: () {}, child: Text('View All'))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 232, 252, 207),
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: Colors.black87.withOpacity(0.4),
                          //     spreadRadius: 0.3,
                          //     blurRadius: 8,
                          //     offset: Offset(1, 2),
                          //   ),
                          // ],
                          borderRadius: BorderRadius.circular(10)),
                      height: 200,
                      width: 160,
                      child: Column(
                        children: [
                          Expanded(
                              flex: 4,
                              child: Image.asset(
                                'assets/images/burger1.png',
                                width: 150,
                              )),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: ElevatedButton(
                                  onPressed: () {}, child: Text('Add to cart')),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 25),
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 232, 252, 207),
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: Colors.black87.withOpacity(0.4),
                          //     spreadRadius: 0.3,
                          //     blurRadius: 8,
                          //     offset: Offset(1, 2),
                          //   ),
                          // ],
                          borderRadius: BorderRadius.circular(10)),
                      height: 200,
                      width: 160,
                      child: Column(
                        children: [
                          Expanded(
                              flex: 4,
                              child: Image.asset(
                                'assets/images/pizza.png',
                                width: 130,
                              )),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: ElevatedButton(
                                  onPressed: () {}, child: Text('Add to cart')),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 25),
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 232, 252, 207),
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: Colors.black87.withOpacity(0.4),
                          //     spreadRadius: 0.3,
                          //     blurRadius: 8,
                          //     offset: Offset(1, 2),
                          //   ),
                          // ],
                          borderRadius: BorderRadius.circular(10)),
                      height: 200,
                      width: 160,
                      child: Column(
                        children: [
                          Expanded(
                              flex: 4,
                              child: Image.asset(
                                'assets/images/burger1.png',
                                width: 150,
                              )),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: ElevatedButton(
                                  onPressed: () {}, child: Text('Add to cart')),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage('assets/images/banner3.png'),
                        fit: BoxFit.cover)),
                height: 180,
              ),
            )
          ],
        ),
      )),
    );
  }
}
