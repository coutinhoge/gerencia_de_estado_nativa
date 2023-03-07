import 'package:flutter/material.dart';
import 'package:gerencia_de_estado_nativa/one_page.dart';
import 'package:gerencia_de_estado_nativa/two_page.dart';
import 'package:gerencia_de_estado_nativa/widgets/custom_button_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: OnePage(),
    );
  }
}
