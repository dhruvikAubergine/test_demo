import 'package:flutter/material.dart';
import 'package:test_demo/pages/second_page.dart';

import '../logic/calculator.dart';

enum Opration { add, sub, mul, div }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final _firstNumberController = TextEditingController();

  final _secondNumberController = TextEditingController();

  double answer = 0;
  final calculator = Calculator();

  void cal(Opration opration) {
    if (!(_formKey.currentState?.validate() ?? false)) {
      return;
    }
    _formKey.currentState?.save();
    final firstNumber = double.parse(_firstNumberController.text.trim());
    final secondNumber = double.parse(_secondNumberController.text.trim());

    switch (opration) {
      case Opration.add:
        {
          setState(() => answer = calculator.add(firstNumber, secondNumber));
        }
        break;
      case Opration.sub:
        {
          setState(() => answer = calculator.sub(firstNumber, secondNumber));
        }
        break;
      case Opration.mul:
        {
          setState(() => answer = calculator.mul(firstNumber, secondNumber));
        }
        break;
      case Opration.div:
        {
          setState(() => answer = calculator.div(firstNumber, secondNumber));
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Test Demo'),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          key: const Key('singleChileScrollview'),
          child: Column(
            children: [
              const Text(
                'Calculator',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                key: const Key('firstField'),
                keyboardType: TextInputType.number,
                controller: _firstNumberController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  hintText: 'Enter First Number',
                ),
                validator: (value) {
                  final number = value ?? '';
                  if (number.isEmpty) {
                    return 'Please enter first number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                key: const Key('secondField'),
                keyboardType: TextInputType.number,
                controller: _secondNumberController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  hintText: 'Enter Second Number',
                ),
                validator: (value) {
                  final number = value ?? '';
                  if (number.isEmpty) {
                    return 'Please enter second number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () => cal(Opration.add),
                    child: const Text('Add'),
                  ),
                  ElevatedButton(
                    onPressed: () => cal(Opration.sub),
                    child: const Text('Sub'),
                  ),
                  ElevatedButton(
                    onPressed: () => cal(Opration.mul),
                    child: const Text('Mul'),
                  ),
                  ElevatedButton(
                    onPressed: () => cal(Opration.div),
                    child: const Text('Div'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                'Answer : ${answer.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Integration Testing',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Integration testing (sometimes called integration and testing, abbreviated I&T) is the phase in software testing in which individual software modules are combined and tested as a group.',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Widget Testing',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'The widget test is testing UI components, so it is also called Component Testing.\nIt is used to test a single widget.\nThe main goal of widget testing is to check whether the widget works as expected.',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Unit Testing',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Unit tests are handy for verifying the behavior of a single function, method, or class.',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                key: const Key('firstButton'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SecondPage()),
                  );
                },
                child: const Text('Second Page'),
              )
            ],
          ),
        ),
      ),
    );
  }
}


