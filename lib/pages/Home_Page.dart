import 'package:fake_games_socialmedia/pages/Facebook_Page.dart';
import 'package:fake_games_socialmedia/pages/Gmail_Page.dart';
import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RoundedLoadingButton(
              color: Colors.black,
              resetDuration: Duration(seconds: 3),
              resetAfterDuration: true,
              child:
                  Text('Iniciar Juego', style: TextStyle(color: Colors.white)),
              controller: _btnController,
              onPressed: () {}),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Facebookpage2()),
                );
              },
              child: Text("Facebook")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GmailPage()),
                );
              },
              child: Text("Gmail"))
        ],
      ),
    );
  }
}
