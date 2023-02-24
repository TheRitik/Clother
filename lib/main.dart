import 'package:clother/main.dart';
import 'package:flutter/material.dart';
import 'package:clother/homescreen.dart';
void main() {
  runApp(const MaterialApp(
    home: homeScreen(),
  ));
}
class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clother'),
      ),
    );
  }
}

