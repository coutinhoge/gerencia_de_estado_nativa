import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gerencia_de_estado_nativa/widgets/custom_button_widget.dart';

class OnePage extends StatefulWidget {
  const OnePage({super.key});

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  ValueNotifier<int> valorAleatorio = ValueNotifier<int>(0);

  random() async {
    for (int i = 0; i < 10; i++) {
      await Future.delayed(Duration(seconds: 1));
      valorAleatorio.value = Random().nextInt(1000);
    }
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder(
              valueListenable: valorAleatorio,
              builder: (_, value, __) =>
                  Text('Valor e: $value', style: TextStyle(fontSize: 20)),
            ),
            SizedBox(height: 10),
            CustomButtonWidget(
              disable: false,
              onPressed: () => random(),
              title: 'Custom BTN',
              titleSize: 18,
            ),
          ],
        ),
      ),
    );
  }
}
