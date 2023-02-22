import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      margin: (const EdgeInsets.only(top: 10, left: 25, right: 25)),
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(8.0)),
      child: const Center(
        child: Text('Adicionar', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
