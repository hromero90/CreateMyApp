import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:travelapp/pages/acerca_de.dart';
import 'package:travelapp/pages/centro_innovacion.dart';
import 'package:travelapp/pages/character_listing_screen.dart';
import 'package:travelapp/pages/lenguajes_importantes.dart';
import 'package:travelapp/pages/quiz_app.dart';

void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int pageIndex = 0;

  //Crear todas las paginas.

  final CharacterListingScreen _importanciaApps = CharacterListingScreen();
  final lenguajes_importantes _lenguajesImportantes =
      new lenguajes_importantes();
  final centro_innovacion _centroInnovacion = new centro_innovacion();
  final ProfileScreen _acercaDe = new ProfileScreen();
  final MyApp _myApp = new MyApp();

  Widget _showPage = new CharacterListingScreen();

  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _importanciaApps;
      case 1:
        return _lenguajesImportantes;
      case 2:
        return _centroInnovacion;
      case 3:
        return _myApp;
      case 4:
        return _acercaDe;
        break;
      default:
        return new Container(
          child: new Center(
            child: new Text(
              'Seleccione una pantalla valida',
              style: new TextStyle(fontSize: 30),
            ),
          ),
        );
    }
  }

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: pageIndex,
        height: 60.0,
        items: <Widget>[
          Icon(Icons.auto_stories, size: 30, color: Colors.deepOrange[900]),
          Icon(
            Icons.android,
            size: 30,
            color: Colors.lightGreenAccent[700],
          ),
          Icon(
            Icons.laptop_chromebook,
            size: 30,
            color: Colors.purpleAccent[700],
          ),
          Icon(
            Icons.quiz,
            size: 30,
            color: Colors.blue,
          ),
          Icon(
            Icons.perm_identity,
            size: 30,
            color: Colors.amber[900],
          ),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Color(0xFF212239),
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (int tappedIndex) {
          setState(() {
            _showPage = _pageChooser(tappedIndex);
          });
        },
        //letIndexChange: (index) => true,
      ),
      body: Container(
          color: Colors.blueAccent,
          child: Center(
            child: _showPage,
          )),
    );
  }
}
