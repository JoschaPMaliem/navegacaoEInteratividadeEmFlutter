import 'package:flutter/material.dart';
import 'package:navegacao_flutter/tela1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2, // Number of tabs
        child: primeiraTela(),
      ),
    );
  }
}
