import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MotDePasse extends StatelessWidget {
  const MotDePasse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(padding:
          EdgeInsets.only(bottom: 100),
            child: Text("Connexion",
              style: GoogleFonts.belgrano(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 25,
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(

              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    SizedBox(height: 10,),
                    Form(
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Téléphone',
                            ),
                            textInputAction: TextInputAction.next,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Ml + 223 ',
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text('mot de passe oublier ?'),
                          SizedBox(height: 150,),

                          ElevatedButton(
                              onPressed:() {},
                              style: ElevatedButton.styleFrom(
                                shape: StadiumBorder(),
                                backgroundColor: Colors.black12,
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 20,),
                                  Text('Connexion',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.belgrano(
                                      color: Colors.red,
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
            ),
          ),
        ],
      ),
    );
  }
}
