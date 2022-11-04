import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'AnimationPage.dart';

class Connexion extends StatelessWidget {
  const Connexion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SingleChildScrollView(
        child: Column(
          children: [
            AnimationPage(
                delais: 1,
                child: Container(
              height: 200,
              child: Container(
                margin: const EdgeInsets.symmetric(
                  vertical:40,
                  horizontal:30,
                ),
                child: Column(
                  children: [
                    Text("Connecte-toi à TikODC",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 30,),
                    Text("Géère ton compte, consulte les notifications, commente des vidéo et bien plus encore",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Colors.black12,
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(height: 70,),
                  ],
                ),
              ),
            )
            ),
            AnimationPage(delais: 1,child: Container(
              margin: const EdgeInsets.symmetric(
                vertical:14,
                horizontal:30,
              ),
              child: Column(
                children: [
                  ElevatedButton(
                      onPressed:() {},
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Colors.white,
                        padding: EdgeInsets.all(13),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.person_rounded,),
                          SizedBox(width: 20,),
                          Text('Utiliser téléphone/e-mail/nom d’utilisateur')

                        ],
                      )
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(
                      onPressed:() {},
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Colors.white,
                        padding: EdgeInsets.all(13),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.facebook,),
                          SizedBox(width: 20,),
                          Text('Continuer avec Facebook')

                        ],
                      )
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(
                      onPressed:() {},
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Colors.white,
                        padding: EdgeInsets.all(13),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.gps_fixed_outlined,),
                          SizedBox(width: 20,),
                          Text('Continuer avec gmail')

                        ],
                      )
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(
                      onPressed:() {},
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Colors.white,
                        padding: EdgeInsets.all(13),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.facebook_sharp,),
                          SizedBox(width: 20,),
                          Text('Continuer avec  Twitter')

                        ],
                      )
                  ),
                  SizedBox(height: 100,),
                  Text("En continuant, tu acceptes les conditions d’utilisation et reconnais avoir et lu"
                      " la politique de confidialité pour savoir comment nous collectons, utilisons et partageons tes données.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.black12,
                      fontSize: 8,
                    ),
                  ),
                  SizedBox(height: 110,),

                  Text("Tu n’as pas de compte ?",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.belgrano(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  Text("Inscription",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.belgrano(
                      color: Colors.red,
                      fontSize:18,
                    ),
                  ),
                ],
//Tu n’as pas de compte ?
              ),

            )
            ),
          ],

        ),
      ) ,

    );
  }
}
