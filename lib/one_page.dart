import 'package:flutter/material.dart';
import 'package:gerencia_de_estado_nativa/widgets/custom_button_widget.dart';

class OnePage extends StatelessWidget {
  const OnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: Center(
        child: CustomButtonWidget(
          disable: false,
          onPressed: () {},
          title: 'Custom BTN',
          titleSize: 18,
        ),
      ),
    );
  }
}
