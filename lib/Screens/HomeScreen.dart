import 'package:flutter/material.dart';
import 'package:toktok/Widgets/homeScreenWidgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    var wdt = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('TokTok'),
        // centerTitle: true,
        titleSpacing: 15,
        leading: Container(
            child: Row(
          children: [
            SizedBox(
              width: 25,
            ),
            Image.asset(
              'assets/images/mainLogo.jpg',
              height: 30,
            ),
          ],
        )),
        leadingWidth: 60,
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.heart_broken_outlined)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.chat_bubble_outline_rounded)),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        // color: Colors.cyan.shade200,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // ---------------------Status----------------------------------
              Container(
                  height: 120,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Stack(
                            children: [
                              CircleAvatar(
                                radius: 45,
                                backgroundColor: Colors.grey,
                                backgroundImage: AssetImage('assets/images/hrit.jpg'),
                              ),
                              Positioned(
                                top: 64,left: 63,
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xffff4d67),
                                        borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: Icon(Icons.add,color: Colors.white,)
                                  )
                              ),
                              // Align(
                              //   alignment: FractionalOffset(1,1),
                              //   child: Icon(Icons.add),
                              // )
                            ],
                          ),
                        ),
                        status(true, 'img2.jpeg'),
                        status(false, 'img2.jpeg'),
                        status(true, 'img2.jpeg'),
                        status(false, 'img2.jpeg'),
                        status(true, 'img2.jpeg'),
                      ],
                    ),
                  )),

              // --------------------Posts-------------------------------
              posts('Hemanta', 'flutter', 1200, 750, wdt,'pooja2.jpg'),
              posts('Hemanta', 'flutter', 1200, 750, wdt,'priyanka.jpg'),
              posts('Hemanta', 'flutter', 1200, 750, wdt,'pooja2.jpg'),
              posts('Hemanta', 'flutter', 1200, 750, wdt,'pooja.jpg'),

            ],
          ),
        ),
      ),

    );
  }
}
