import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tikodc/tikodc/AnimationPage.dart';

class Inscription extends StatelessWidget {
  const Inscription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [

            AnimationPage(
                delais: 0,child: Container(
              height: 200,
              child: Container(
                margin: const EdgeInsets.symmetric(
                  vertical:40,
                  horizontal:30,
                ),
                child: Column(
                  children: [
                    Text("Inscription à TikODC",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text("Crée un profil, abonne-toi à d’autres comptes, crée tes propres vidéos et bien plus encore.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Colors.black12,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
            )
            ),
            AnimationPage(delais: 0,child: Container(
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
                        backgroundColor: Colors.black,
                        padding: EdgeInsets.all(13),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.person_rounded,),
                          SizedBox(width: 20,),
                          Text('Utilise un téléphone ou une adresse e- mail')

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
                  SizedBox(height: 50,),

                  Text("En continuant, tu acceptes les conditions d’utilisation et reconnais avoir et lu la politique"
                      " de confidialité pour savoir comment nous collectons, utilisons et partageons tes données.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.black54,
                      fontSize: 14,
                    ),
                  ),



                  Text("Tu as déjà un compte ?",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.belgrano(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  Text("Connexion",
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
