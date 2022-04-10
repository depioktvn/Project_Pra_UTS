import 'package:flutter/material.dart';
import 'routes.dart';
import 'navBar.dart';

void main() {
  runApp(MaterialApp(
    onGenerateRoute: RouteGenerator.generateRoute,
    theme: ThemeData(primarySwatch: Colors.blueGrey),
    title: "Belajar Drawer",
    debugShowCheckedModeBanner: false,
    home: BelajarNavigationDrawer(),
  ));
}

class BelajarNavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text("Hi Guys"),
          ),
          drawer: DrawerNav(),
          body: Center(
            child: Text('Cie Yang Lagi Stalker', style: TextStyle(fontWeight: FontWeight.bold)),
          )
          // endDrawer: CustomDrawer(),
          // body: TabBarView(
          //   children: <Widget>[
          //     Playlist(),
          //     Collections(),
          //     Favorite()
          //   ],
          // )
          ));
}
