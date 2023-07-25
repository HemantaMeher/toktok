import 'package:flutter/material.dart';
class DemoScreen extends StatefulWidget {
  const DemoScreen({Key? key}) : super(key: key);

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  get nt => 0;

  @override
  Widget build(BuildContext context) {
    return //Tab Bar
      DefaultTabController(
        animationDuration: Duration(seconds: 5),
        initialIndex: nt,
        length: 3,

        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              onTap: (n){
                print(n);
                setState(() {
                  // nt = n;
                });
              },
              indicatorColor: Colors.red,
              // indicatorSize: TabBarIndicatorSize.tab,
              // indicatorSize: TabBarIndicatorSize.label,
              indicatorSize: TabBarIndicatorSize.values[0],
              // indicatorWeight: 10,
              indicator: BoxDecoration(
                // color: Colors.green,
                //   gradient: LinearGradient(
                //   colors: [Colors.yellow, Colors.redAccent],
                //
                // ),
                // image: DecorationImage( image: AssetImage('assets/img.png'), )
                image: DecorationImage(
                  image: nt == 0 ? NetworkImage(
                      "https://tse4.mm.bing.net/th?id=OIP.fzSnClvueUiDCZNJINMWywHaEK&pid=Api&P=0") : nt == 1 ? NetworkImage(
                      "https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"): NetworkImage(
                      "https://images.pexels.com/photos/1542495/pexels-photo-1542495.jpeg"),
                ),
              ),
              labelColor: Colors.yellow,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.flight,

                  ),
                  text: "Icon ",
                ),
                Tab(
                  icon: Icon(Icons.directions_transit),
                  text: "Text Buttons",
                ),
                Tab(
                  icon: Icon(Icons.directions_car),
                  text: "Elevated Button",
                ),
              ],
            ),
            title: Text('Tabs Bar '),
          ),
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              // Text("Icon"),
              // Text("Text Button"),
              // Text("Elevated Button"),
              // NavigatorScreen(),
              // DrawerScreen(),
              // SeconfScreen(),
            ],
          ),
        ),
      );
  }
}
