import 'package:flutter/material.dart';

class Acceuil extends StatelessWidget {
  const Acceuil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Fond noir comme demandé
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Nom de l'application en français
            const Text(
              'SolairHome',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Texte en blanc pour le contraste
                fontFamily: 'Arial', // Police en français
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Titre en arabe
            const Text(
              'مرحباً بكم في سولير هوم',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Texte en blanc pour le contraste
                fontFamily: 'Arabic', // Police arabe si disponible
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            // Image de l'application
            Image.asset(
              "android/assets/images/gti.jpg",
              height: 300,
              width: 400,
            ),
            const SizedBox(height: 20),
            // Bouton "Commencer"
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/solaire');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF3F51B5), // Couleur du bouton
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0), // Coins arrondis
                ),
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0), // Espacement interne
              ),
              child: const Text(
                'ابدأ الآن', // Traduction de "Get Started"
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18, // Taille de police plus grande pour le bouton
                  fontWeight: FontWeight.bold, // Mettre en gras
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
