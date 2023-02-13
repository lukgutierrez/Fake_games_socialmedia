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
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image(image: AssetImage("assets/Luk.gif")),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundedLoadingButton(
                  color: Colors.white,
                  resetDuration: Duration(seconds: 1),
                  resetAfterDuration: true,
                  child: Text('Iniciar Juego',
                      style: TextStyle(color: Colors.black)),
                  controller: _btnController,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        title: Text("PRIMERO REGISTRATE..!"),
                        content: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.black),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Facebookpage2()),
                                    );
                                  },
                                  child: Text("Facebook")),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.black),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => GmailPage()),
                                    );
                                  },
                                  child: Text("Gmail")),
                            )
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(ctx).pop();
                            },
                            child: Center(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(45),
                                ),
                                width: 200,
                                padding: const EdgeInsets.all(14),
                                child: Center(
                                  child: Text(
                                    "OK",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ],
          ),
        ],
      ),
    );
  }
}

class Dialog extends StatelessWidget {
  const Dialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: Colors.amber,
    );
  }
}
