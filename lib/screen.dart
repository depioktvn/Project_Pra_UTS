import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: Text('Aida Belajar Routing'),
          ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Profil');
              },
              child: Text('Profil'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Portofolio');
              },
              child: Text('Portofolio'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Contact');
              },
              child: Text('Contact'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Setting');
              },
              child: Text('Contact'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Gallery');
              },
              child: Text('Contact'),
            ),
          ],
        ),
      ),
    );
  }
}

class Profil extends StatelessWidget {
  //Profil
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: Column(children: [
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            image: DecorationImage(
              image: AssetImage('assets/image/depai2.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
            padding: EdgeInsets.fromLTRB(5.0, 30.0, 5.0, 2.0),
            height: 200,
            width: double.infinity,
            child: Card(
                elevation: 3,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Row(children: [
                    Text('Nama        : Devi Oktaviani', style: TextStyle(fontWeight: FontWeight.bold)),
                  ]),
                  Row(children: [
                    Text('TTL            : Banyuwangi, 26 Oktober 20021', style: TextStyle(fontWeight: FontWeight.bold)),
                  ]),
                  Row(children: [
                    Text('Kelamin     : Perempuan', style: TextStyle(fontWeight: FontWeight.bold)),
                  ]),
                  Row(children: [
                    Text('Agama       : Islam', style: TextStyle(fontWeight: FontWeight.bold)),
                  ]),
                  Row(children: [
                    Text('Alamat       : Sobo 002/003 Banyuwangi', style: TextStyle(fontWeight: FontWeight.bold)),
                  ]),
                  Row(children: [
                    Text('No. WA      : 082331090928', style: TextStyle(fontWeight: FontWeight.bold)),
                  ]),
                  Row(children: [
                    Text('Status        : Mahasiswa Poliwangi', style: TextStyle(fontWeight: FontWeight.bold)),
                  ]),
                ]))),
      ]),
    );
  }
}

class Portofolio extends StatelessWidget {
  //Portofolio
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portofolio'),
      ),
      body: GridView.count(crossAxisCount: 1, children: <Widget>[
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.asset(
                "assets/image/poto1.jpeg",
                height: 350.0,
                width: 350.0,
                fit: BoxFit.cover,
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.asset(
                "assets/image/poto2.jpeg",
                height: 350.0,
                width: 350.0,
                fit: BoxFit.cover,
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.asset(
                "assets/image/poto3.jpeg",
                height: 350.0,
                width: 350.0,
                fit: BoxFit.cover,
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.asset(
                "assets/image/poto4.jpeg",
                height: 350.0,
                width: 350.0,
                fit: BoxFit.cover,
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.asset(
                "assets/image/poto5.jpeg",
                height: 350.0,
                width: 350.0,
                fit: BoxFit.cover,
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.asset(
                "assets/image/poto6.jpeg",
                height: 350.0,
                width: 350.0,
                fit: BoxFit.cover,
              ),
            ]),
          ),
        ),
      ]),
      // child: RaisedButton(
      //   onPressed: () {
      //     Navigator.pop(context);
      //   },
      //   child: Text('Kembali'),
      // ),
      //),
    );
  }
}

class Contact extends StatelessWidget {
  //Contact
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("ContactMe", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(filled: true, hintText: "Name", fillColor: Colors.white, border: InputBorder.none),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(filled: true, hintText: "Email", fillColor: Colors.white, border: InputBorder.none),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    maxLines: 7,
                    decoration: InputDecoration(filled: true, hintText: "Message", fillColor: Colors.white, border: InputBorder.none),
                  ),
                  SizedBox(height: 8),
                  MaterialButton(
                    height: 60,
                    minWidth: double.infinity,
                    color: Colors.blueGrey,
                    onPressed: () {},
                    child: Text("SUBMIT",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Setting extends StatelessWidget {
  //Setting
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: Center(
        child: Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        ),
        // child: RaisedButton(
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        //   child: Text('Kembali'),
        // ),
      ),
    );
  }
}

class Gallery extends StatelessWidget {
  //Gallery
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Fav Gallery'),
      ),
      body: GridView.count(crossAxisCount: 2, children: <Widget>[
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.asset(
                "assets/image/foto1.jpeg",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'BTS Perfomers',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.asset(
                "assets/image/foto2.jpeg",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'BlackPink Perfomers',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.asset(
                "assets/image/foto3.jpeg",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'EXO Perfomers',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.asset(
                "assets/image/fto1.jpeg",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'Teahyung Perfomers',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.asset(
                "assets/image/fto2.jpeg",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'Lisa Perfomers',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.asset(
                "assets/image/fto4.jpeg",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'DO Perfomers',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}
