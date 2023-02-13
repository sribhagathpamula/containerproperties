//import 'package:flutter/material.dart';
//import 'Screens/sign_up_page.dart';

//void main() {
 // runApp(const MyApp());
//}

//class MyApp extends StatelessWidget {
 // const MyApp({super.key});

 // @override
 // Widget build(BuildContext context) {
   // return MaterialApp(
   //   debugShowCheckedModeBanner: false,
    //  title: 'Flutter Demo',
     // theme: ThemeData(
      //  primarySwatch: Colors.deepPurple,
     // ),
     // home: Signuppage(),
    //);
  //}
//}
import 'package:containerproperties/Screens/home_screen.dart';
import 'package:containerproperties/Screens/orderspage.dart';
import 'package:containerproperties/Screens/privacypage.dart';
import 'package:containerproperties/Screens/settings_screen.dart';
import 'package:containerproperties/Screens/termspage.dart';
import 'package:containerproperties/Screens/welcomepage.dart';
import 'package:containerproperties/page/page%204.dart';
import 'package:containerproperties/page/page0.dart';
import 'package:containerproperties/page/page1.dart';
import 'package:containerproperties/page/page2.dart';
import 'package:containerproperties/page/page3.dart';
import 'package:flutter/material.dart';
 

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Sitara';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: WelcomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({required Key key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.black,
              elevation: 0,
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.notifications,
                    size: 30,
                  ), onPressed: () {  },
                  // onPressed: () {
                  //   Navigator.push(
                  //       context,
                  //       new MaterialPageRoute(
                  //           builder: (context) =>    SettingPage()));
                  // },
                ),
                IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new OrdersPage()));
                  },
                ),
              ],
              bottom: TabBar(
                  unselectedLabelColor: Colors.yellowAccent,
                  indicatorPadding: EdgeInsets.only(left: 30, right: 30),
                  indicator: ShapeDecoration(
                      color: Colors.redAccent,
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(
                            color: Colors.redAccent,
                          ))),
                  tabs: [
                    Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("All"),
                      ),
                    ),
                    Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Break fast"),
                      ),
                    ),
                    Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Dinner"),
                      ),
                    ),
                    Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Cold Drinks"),
                      ),
                    ),
                    Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Offers"),
                      ),
                    ),
                  ]),
              // bottom: TabBar(
              //   tabs: [
              //     Tab(icon: Icon(Icons.fastfood)),
              //     Tab(icon: Icon(Icons.cake)),
              //     Tab(icon: Icon(Icons.fastfood)),
              //     Tab(icon: Icon(Icons.add_shopping_cart)),
              //   ],
              // ),
              title: Text(title)),
          body: TabBarView(
            children: [
              Page1(),
              Page2(),
              Page3(),
              Page4 (),
              Page0(),
            ],
          ),
//
          drawer: Drawer(
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  // child: Text('FOGO FOOD'),
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      image: DecorationImage(
                          image: AssetImage("assets/drw.jpg"),
                          fit: BoxFit.cover)), child: null,
                ),
                ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.red.shade400,
                  ),
                  title: Text('Home'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new HomePage()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.restore,
                    color: Colors.red.shade400,
                  ),
                  title: Text('Orders'),
                  // onTap: () {
                  //   // Update the state of the app
                  //   // ...
                  //   // Then close the drawer
                  //   Navigator.push(
                  //       context,
                  //       new MaterialPageRoute(
                  //           builder: (context) => new OrdersPage()));
                  // },
                ),
                ListTile(
                  leading: Icon(
                    Icons.account_circle,
                    color: Colors.red.shade400,
                  ),
                  title: Text('Account'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    // Navigator.push(
                    //     context,
                    //     new MaterialPageRoute(
                    //         builder: (context) => new LoginPage()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.local_play,
                    color: Colors.red.shade400,
                  ),
                  title: Text('Privacy Policy'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new PrivacyPage()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.event,
                    color: Colors.red.shade400,
                  ),
                  title: Text('Terms And Conditions'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new TermsPage()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.red.shade400,
                  ),
                  title: Text('Share Our Love'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.red.shade400,
                  ),
                  title: Text('Settings'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new SettingPage()));
                  },
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 1.0,
                    width: 130.0,
                    color: Colors.black12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}