import 'package:flutter/material.dart';


class CardsScreen extends StatelessWidget {
  static const String name = 'Card_Screen';
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Cards Screens'),
      ),
      body: const Center(child: Text('Cards Screens')));
  }
}