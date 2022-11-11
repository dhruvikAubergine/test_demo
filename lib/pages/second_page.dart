import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Second Page'),
      ),
      body: Center(
        child: ElevatedButton(
          key: const Key('secondButton'),
          child: const Text('Home Page'),
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }
}
