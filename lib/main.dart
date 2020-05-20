import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigationrail/books.dart';
import 'package:navigationrail/puzzles.dart';
import 'package:navigationrail/toys.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List<Widget> screens = [Toys(), Books(), Puzzle(),];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(


        body: Row(crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[


            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Container(width: 78,
                    height: 430,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(0),topRight: Radius.circular(0),bottomLeft: Radius.circular(32),bottomRight: Radius.circular(32)),
                      color: Colors.purple[800],),
                    ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 2),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                    ),
                    height: 400,
                    child: NavigationRail(
                      backgroundColor: Colors.purple[800],
                      selectedIndex: _selectedIndex,
                      selectedLabelTextStyle: TextStyle(
                          fontWeight: FontWeight.bold,


                          decoration: TextDecoration.underline),
                      unselectedLabelTextStyle: TextStyle(color: Colors.white),
                      onDestinationSelected: (int index) {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },

                      labelType: NavigationRailLabelType.selected,

                      destinations: [
                        // NavigationRailDestination(
                        //   icon: Icon(Icons.dashboard, color: Colors.white,),
                        //   selectedIcon: Icon(Icons.dashboard, color: Colors.white,),
                        //   label: Text("Dashboard", style: TextStyle(color: Colors.white))
                        // ),
                        // NavigationRailDestination(
                        //   icon: Icon(Icons.list, color: Colors.white,),
                        //   selectedIcon: Icon(Icons.list, color: Colors.white,),
                        //   label: Text("Details", style: TextStyle(color: Colors.white))
                        // ),
                        // NavigationRailDestination(
                        //   icon: Icon(Icons.info_outline, color: Colors.white,),
                        //   selectedIcon: Icon(Icons.info, color: Colors.white,),
                        //   label: Text("About", style: TextStyle(color: Colors.white))
                        // ),
                        NavigationRailDestination(
                            icon: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Image.asset('assets/images/children.png',height: 60,width: 60,),
                            ),
                            label: Container(

                              child: Text(
                                "Toys",
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                        NavigationRailDestination(
                            icon: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Image.asset('assets/images/book.png',height: 60,width: 60,),
                            ),
                            label: Container(

                              child: Text(
                                "Books",
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                        NavigationRailDestination(
                            icon: Image.asset('assets/images/mat.png',height: 60,width: 60,),
                            label: Container(

                              child: Text(
                                "Puzzles",
                                style: TextStyle(color: Colors.white),
                              ),
                            )),

                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(child: screens[_selectedIndex])
          ],
        ),
      ),
    );
  }
}








