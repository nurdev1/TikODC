import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OTP1 extends StatelessWidget {
  const OTP1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading:
        IconButton(
          onPressed: (){},
          icon: Image.asset("assets/icones/ret.png"),
        ),
        actions: [
          IconButton(onPressed: (){},
            icon: Image.asset("assets/icones/que.png"),
          ),

        ],
      ),

      body: Padding(
        padding: const EdgeInsets.only(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 25,),
            Text("Création du nouveau mot de passe",
              style: GoogleFonts.share(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 25,
              ),),
            SizedBox(height: 20,),
            Text("Utilise entre 8 et 20 caractères issus au moins 2 catégories suivantes: lettres,"
                " chiffres, caractères spéciaux",
              style: GoogleFonts.aclonica(
                color: Colors.black12,
                fontWeight: FontWeight.normal,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20,),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Mot de passe ',
                    ),
                  ),
                  SizedBox(height: 25,),
                  ElevatedButton(
                      onPressed:() {},
                      style: ElevatedButton.styleFrom(
                        shape: new RoundedRectangleBorder(),
                        backgroundColor: Colors.black12,
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 20,),
                          Text('Suivant',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.acme(
                              color: Colors.white,
                              fontSize:18,
                            ),
                          ),

                        ],
                      )
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
