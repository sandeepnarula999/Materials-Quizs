///***TutorialTopbarSliver_Screen.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:flutter_covid_dashboard_ui/screens/TutorialTab/Tutorials.dart';
//const Color swatchColor = Color(0xFFFFFFF);
// void main() => runApp(MyApp());

class Tutorialhomepage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SkillUp',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SliverPage(title: 'SkillUP'),
    );
  }
}

class SliverPage extends StatefulWidget {
  SliverPage({Key key, @required this.title}) : super(key: key);

  final String title;

  @override
  _SliverPageState createState() => _SliverPageState();
}

class _SliverPageState extends State<SliverPage> with SingleTickerProviderStateMixin {
  //late
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // this sliver app bar is only use to hide/show the tabBar, the AppBar
    // is invisible at all times. The to the user visible AppBar is below
    return Scaffold(
      body: Stack(
        children: <Widget>[
          NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  //primary: true,
                  floating: true,
                  snap: false,
                  pinned: true,
                  backgroundColor: Color(0xFF473F97), //.withOpacity(0.3),
                  //drawer: Drawer(),
                  // actions: [
                  //   IconButton(
                  //     splashRadius: 23,
                  //     icon: Container(decoration: BoxDecoration(color: Color(0xFF05122B), borderRadius: BorderRadius.circular(100)), child: Center(child: Icon(Icons.share, color: Colors.white, size: 20))),
                  //     onPressed: () {},
                  //   ),
                  // ],
                  bottom: TabBar(
                    isScrollable: true,
                    // indicator: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(50), // Creates border
                    //     color: Colors.white), //Change background color from here
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.grey,
                    indicatorWeight: 6,
                    tabs: <Widget>[
                      Tab(
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.pedal_bike_outlined,
                              //Icons.phone_android,

                              //   color: Colors.green,
                              size: 23.0,
                            ),
                            Text(
                              "Process",
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.green[200], fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            // SizedBox(
                            //   width: 5.0,
                            // ),
                          ],
                        ),
                      ),
                      Tab(
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.moped,
                              //   //Icons.smart_display_rounded,
                              //   //Icons.subscriptions_rounded,
                              size: 23.0,
                              //   color: Colors.blue,
                            ),
                            Text(
                              "Tech",
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.blue[200], fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            // SizedBox(
                            //   width: 3.0,
                            // ),
                          ],
                        ),
                      ),
                      Tab(
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.two_wheeler,
                              size: 23.0,
                              //   color: Colors.amber,
                            ),
                            Text(
                              "Tools",
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.amber[200], fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            // SizedBox(
                            //   width: 5.0,
                            // ),
                          ],
                        ),
                      ),
                      Tab(
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.agriculture,
                              size: 23.0,
                              //   color: Colors.amber,
                            ),
                            Text(
                              "Comm",
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.green, fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            // SizedBox(
                            //   width: 5.0,
                            // ),
                            // Icon(
                            //   Icons.two_wheeler,
                            //   size: 33.0,
                            //   color: Colors.amber,
                            // ),
                          ],
                        ),
                      ),
                      Tab(
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.airport_shuttle,
                              size: 23.0,
                              //   color: Colors.amber,
                            ),
                            Text(
                              "KB",
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.blue, fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            // SizedBox(
                            //   width: 5.0,
                            // ),
                            // Icon(
                            //   Icons.two_wheeler,
                            //   size: 33.0,
                            //   color: Colors.amber,
                            // ),
                          ],
                        ),
                      ),
                      Tab(
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.electric_rickshaw,
                              size: 23.0,
                              //   color: Colors.amber,
                            ),
                            Text(
                              "Adhoc",
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.amber, fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            // SizedBox(
                            //   width: 5.0,
                            // ),
                            // Icon(
                            //   Icons.two_wheeler,
                            //   size: 33.0,
                            //   color: Colors.amber,
                            // ),
                          ],
                        ),
                      ),
                    ],
                    controller: _tabController,
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: [
                Tutorials(),
                MyScreen2(),
                MyScreen3(),
                MyScreen4(),
                MyScreen5(),
                MyScreen6(),
              ],
              controller: _tabController,
              physics: new NeverScrollableScrollPhysics(),
            ),
          ),

          // Here is the AppBar the user actually sees. The SliverAppBar
          // above will slide the TabBar underneath this one.
          // by using SafeArea it will.
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              child: SafeArea(
                top: false,
                child: AppBar(
                  backgroundColor: Color(0xFF473F97),
//                iconTheme: IconThemeData(
//                  color: Colors.red, //change your color here
                  //),
                  automaticallyImplyLeading: true,
                  elevation: 0,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 35,
                        //child: Image.network('https://jep-asset.akamaized.net/jio/svg/logo/myjio-n.svg'),
                      ),
                      Container(padding: const EdgeInsets.all(2.0), child: Text('SkillUP', style: TextStyle(fontSize: 17))),
                      // Container(
                      //     padding: const EdgeInsets.all(1.0),
                      //     child: Text(
                      //       '\n\nTutorials',
                      //       style: TextStyle(fontSize: 15.0),
                      //     )),
                    ],
                  ),
                  //drawer: Drawer(),
                  actions: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.person),
                      iconSize: 20.0,
                      onPressed: () {},
                      tooltip: 'login',
                    ),
                  ],
                  centerTitle: true,
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(children: <Widget>[
          ListTile(
            leading: Icon(Icons.undo),
            title: Text(''),
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
          ListTile(
            leading: Icon(Icons.person_pin),
            title: Text('Name'),
            onTap: () {
              Navigator.pushNamed(context, '/transactionsList');
            },
          ),
          ListTile(
            leading: Icon(Icons.alternate_email),
            title: Text('Email'),
            onTap: () {
              Navigator.pushNamed(context, '/transactionsList');
            },
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text('Address'),
            onTap: () {
              Navigator.pushNamed(context, '/location');
            },
          ),
        ]),
      ),
    );
  }
}

class MyScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text("Process Doc and Video Screen"),
      ),
    );
  }
}

class MyScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Tech Doc & Video Screen"),
      ),
    );
  }
}

class MyScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Tools Doc and Video Screen"),
      ),
    );
  }
}

class MyScreen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text("Comm Doc and Video Screen"),
      ),
    );
  }
}

class MyScreen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text("KB Doc and Video Screen"),
      ),
    );
  }
}

class MyScreen6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text("Adhoc Doc and Video Screen"),
      ),
    );
  }
}
