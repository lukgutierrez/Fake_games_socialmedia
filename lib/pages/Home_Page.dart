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
              child: Text('Tap me!', style: TextStyle(color: Colors.white)),
              controller: _btnController,
              onPressed: () {})
        ],
      ),
    );
  }
}
