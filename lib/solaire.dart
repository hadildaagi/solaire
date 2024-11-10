import 'package:carousel_slider/carousel_slider.dart' as carousel;
import 'package:flutter/material.dart';

class Solaire extends StatelessWidget {
  const Solaire({super.key});

  @override
  Widget build(BuildContext context) {
    // Liste des planètes et leurs images correspondantes
    final List<Map<String, String>> planets = [
      {
        'name': 'الأرض',
        'image': 'android/assets/images/terre2.jpg',
        'route': '/terre', //router pour la terre
      },
      {
        'name': 'القمر',
        'image': 'android/assets/images/lune.jpg',
        'route': '/lune',
      },
      {
        'name': 'الشمس',
        'image': 'android/assets/images/solail.jpg',
        'route': '/solail',
      },
      {
        'name': 'المريخ',
        'image': 'android/assets/images/mars.jpg',
        'route': '/mars',
      },
      {
        'name': 'الزهرة',
        'image': 'android/assets/images/venus.jpg',
        'route': '/venus',
      },
      {
        'name': 'نبتون',
        'image': 'android/assets/images/neptune.jpg',
        'route': '/neptune',
      },
      {
        'name': 'أورانوس',
        'image': 'android/assets/images/uranus.jpg',
        'route': '/uranus',
      },
      {
        'name': 'المشتري',
        'image': 'android/assets/images/jopiter.jpg',
        'route': '/jopiter',
      },
      {
        'name': 'عطارد',
        'image': 'android/assets/images/mercure.jpg',
        'route': '/mercure',
      },
    ];

    return Scaffold(
      backgroundColor: Colors.black, // Fond noir
      appBar: AppBar(
        title: const Text('SolairHome'),
        backgroundColor: const Color(0xFF3F51B5), // Couleur du bouton
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(
                  context, '/Acceuil'); // Naviguer vers l'accueil
            },
            icon: const Icon(Icons.first_page),
          ),
          IconButton(
            onPressed: () {
              // Fonctionnalité à ajouter pour le bouton "last_page"
            },
            icon: const Icon(Icons.last_page),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 20), // Espacement
          const Text(
            'Explorez les planètes',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xFF3F51B5),
            ),
          ),
          const SizedBox(height: 25), // Espacement

          // Carrousel pour afficher les cartes des planètes
          carousel.CarouselSlider(
            options: carousel.CarouselOptions(
              height: 400.0,

              // Hauteur du carrousel
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              autoPlay: false,
            ),
            items: planets.map((planet) {
              return Builder(
                builder: (BuildContext context) {
                  return PlanetCard(
                    planetName: planet['name']!,
                    planetImage: planet['image']!,
                    route: planet['route']!, // Pass route to PlanetCard
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

// Widget de la carte de la planète
class PlanetCard extends StatelessWidget {
  final String planetName;
  final String planetImage;
  final String route; // Add route parameter

  const PlanetCard({
    super.key,
    required this.planetName,
    required this.planetImage,
    required this.route, // Accept route parameter
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.black, // Fond noir comme la carte
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            planetImage,
            height: 230,
            fit: BoxFit.contain,
          ),
          //const SizedBox(height: 25.0),
          Text(
            planetName,
            style: const TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF3F51B5),
            ),
          ),
          const SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                  context, route); // Navigate to planet detail page
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF3F51B5),
            ),
            child: const Text(
              'En savoir plus',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
