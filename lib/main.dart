import 'package:application_arabe/Acceuil.dart';
import 'package:application_arabe/jupiter.dart';
import 'package:application_arabe/lune.dart';
import 'package:application_arabe/mars.dart';
import 'package:application_arabe/mercure.dart';
import 'package:application_arabe/neptune.dart';
import 'package:application_arabe/solail.dart';
import 'package:application_arabe/solaire.dart';
import 'package:application_arabe/terre.dart';
import 'package:application_arabe/uranus.dart';
import 'package:application_arabe/venus.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  void main() {
    runApp(const MyApp());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "solaire app",
      debugShowCheckedModeBanner: false,
      initialRoute: '/Acceuil',
      routes: {
        '/Acceuil': (context) => const Acceuil(),
        '/solaire': (context) => const Solaire(),
        '/terre': (context) => const EarthPage(),
        '/mars': (context) => const MarsPage(),
        '/uranus': (context) => const Uranus(),
        '/venus': (context) => const Venus(),
        '/jopiter': (context) => const JupiterPage(),
        '/mercure': (context) => const MercuryPage (),
        '/neptune': (context) => const NeptunePage(),
        '/lune': (context) => const Lune(),
        '/solail': (context) => const Solail(),
      },
    );
  }
}
