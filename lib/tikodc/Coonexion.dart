import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tikodc/tikodc/Inscription.dart';


class Connexion extends StatelessWidget {
  const Connexion({Key? key}) : super(key: key);

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
      body:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Text("Connecte-toi à TikODC",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),

              Text("Gère ton compte, consulte les notifications, commente des vidéo et bien plus encore",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.black26,
                  fontSize: 16,
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed:() {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.all(13),
                  ),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){},
                        icon: Image.asset("assets/icones/per.png",color: Colors.black,),
                      ),
                      Text('Utiliser téléphone/e-mail/nom d’utilisateur'
                        ,style: TextStyle(
                        color: Colors.black,
                          fontSize: 13,
                      ),

                      )

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
                        color: Colors.black,
                        fontSize: 13,
                      ),
                      ),
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
                        color: Colors.black,
                        fontSize: 13,
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
                        color: Colors.black,
                        fontSize: 13,
                      ),)

                    ],
                  )
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("En continuant, tu acceptes les conditions d’utilisation et reconnais avoir et lu"
                      " la politique de confidialité pour savoir comment nous collectons, utilisons et partageons tes données.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.alef(
                      color: Colors.black26,
                      fontSize: 13,
                    ),
                  ),
                ),
                Container(
                  color: Colors.brown.shade50,
                  height: 36,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Tu n’as pas de compte ?",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      ),
                      GestureDetector(
                        onTap:  (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context)=> Inscription()));
                        },
                        child: Text("Inscription",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                            color: Colors.red,
                            fontSize:17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),

          ],
        ),
      ),

    );
  }
}
