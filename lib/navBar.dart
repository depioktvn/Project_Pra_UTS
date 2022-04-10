import 'package:flutter/material.dart';

class DrawerNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _drawerHeader(),
          _drawerItem(
              icon: Icons.account_circle,
              text: 'Profil',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(0);
                Navigator.pushNamed(context, '/Profil');
                //Navigator.pop(context);
              }),
          Divider(
            height: 10,
            thickness: 1,
          ),
          _drawerItem(
              icon: Icons.collections_bookmark,
              text: 'Portofolio',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(0);
                Navigator.pushNamed(context, '/Portofolio');
                //Navigator.pop(context);
              }),
          Divider(
            height: 10,
            thickness: 1,
          ),
          _drawerItem(
              icon: Icons.phone_android,
              text: 'Contact Us',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(0);
                Navigator.pushNamed(context, '/Contact');
                //Navigator.pop(context);
              }),
          Divider(
            height: 10,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: Text(
              'Keterangan',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ),
          _drawerItem(
              icon: Icons.settings,
              text: 'Setting',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(0);
                Navigator.pushNamed(context, '/Setting');
                //Navigator.pop(context);
              }),
          Divider(
            height: 10,
            thickness: 1,
          ),
          _drawerItem(
              icon: Icons.collections,
              text: 'My Fav Gallery',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(0);
                Navigator.pushNamed(context, '/My Fav Gallery');
                //Navigator.pop(context);
              }),
          Divider(
            height: 10,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage('assets/image/depi.jpeg'), fit: BoxFit.cover),
    ),
    // otherAccountsPictures: [
    //   ClipOval(
    //     child: Image(image: NetworkImage('https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'), fit: BoxFit.cover),
    //   ),
    //   ClipOval(
    //     child: Image(image: NetworkImage('https://images.unsplash.com/photo-1564564321837-a57b7070ac4f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=876&q=80'), fit: BoxFit.cover),
    //   )
    // ],
    accountName: Text('Devi Oktaviani'),
    accountEmail: Text('depioktvn@gmail.com'),
  );
}

Widget _drawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(child: _tabBar, color: Colors.white);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
