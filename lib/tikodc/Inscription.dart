import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tikodc/tikodc/AnimationPage.dart';
import 'package:tikodc/tikodc/Coonexion.dart';

class Inscription extends StatelessWidget {
  const Inscription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(onPressed: (){},
            icon: Image.asset("assets/icones/que.png"),
          ),
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Inscription à TikODC",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Crée un profil, abonne-toi à d’autres comptes, crée tes propres vidéos et bien plus encore.",
                textAlign: TextAlign.center,
                style: GoogleFonts.robotoCondensed(
                  color: Colors.black45,
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed:() {},
                  style: ElevatedButton.styleFrom(
                    shape: new RoundedRectangleBorder(),
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.all(13),
                  ),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){},
                        icon: Image.asset("assets/icones/per.png",color: Colors.black,),
                      ),

                      Text('Utilise un téléphone ou une adresse e- mail',style: TextStyle(
                        color: Colors.black,fontSize: 13,
                      ),)

                    ],
                  )
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed:() {},
                  style: ElevatedButton.styleFrom(
                    shape: new RoundedRectangleBorder(),
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.all(13),
                  ),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){},
                        icon: Image.asset("assets/icones/fac.png"),
                      ),

                      Text('Continuer avec Facebook',style: TextStyle(
                        color: Colors.black,fontSize: 13,
                      ),)

                    ],
                  )
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed:() {},
                  style: ElevatedButton.styleFrom(
                    shape: new RoundedRectangleBorder(),
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.all(13),
                  ),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){},
                        icon: Image.asset("assets/icones/gog.png"),
                      ),

                      Text('Continuer avec gmail',style: TextStyle(
                          color: Colors.black,fontSize: 13,
                      ),)

                    ],
                  )
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed:() {},
                  style: ElevatedButton.styleFrom(
                    shape: new RoundedRectangleBorder(),
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.all(13),
                  ),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){},
                        icon: Image.asset("assets/icones/tw.png"),
                      ),

                      Text('Continuer avec  Twitter',style: TextStyle(
                          color: Colors.black,fontSize: 13,
                      ),)

                    ],
                  )
              ),
            ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("En continuant, tu acceptes les conditions d’utilisation et reconnais avoir et lu la politique"
                  " de confidialité pour savoir comment nous collectons, utilisons et partageons tes données.",
                textAlign: TextAlign.center,
                style: GoogleFonts.play(
                  color: Colors.black54,
                  fontSize: 13,
                ),
              ),
            ),

            Container(
              color: Colors.brown.shade50,
                //height: 36,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Tu as déjà un compte ?",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 17,
                      ),
                    ),
                    GestureDetector(
                      onTap:  (){
            Navigator.push(context, MaterialPageRoute(
            builder: (context)=> Connexion()));
            },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Connexion",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                            color: Colors.red,
                            fontSize:17,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
            ),



          ],
        ),
      ),


    );
  }
}
