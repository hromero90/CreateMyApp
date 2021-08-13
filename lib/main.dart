import 'package:flutter/material.dart';
import 'package:travelapp/pages/acerca_de.dart';
import 'package:travelapp/pages/character_listing_screen.dart';

import 'Screens/onboarding_screen.dart';
import 'menu_principal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        canvasColor: Color(0xFF212239),
      ),
      title: 'CreateMyApp',
      initialRoute: 'Bienvenidos',
      routes: {
        //'PantallaInicio': (_) => HomeScreen(),
        'Bienvenidos': (_) => OnboardingScreen(),
        'Pantalla_Menu': (_) => BottomNavBar(),
        'Acerca_de': (_) => ProfileScreen(),
        'Principal': (_) => CharacterListingScreen(),
      },
      //home: HomeScreen(),
    );
  }
}
