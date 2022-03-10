import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  static const _sizedBox = SizedBox(height: 10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stepper View"),
      ),
      body: Center(
        child: Container(
          color: Colors.amber,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: const [
                  Spacer(),
                  RightCheckMarkContainer(),
                  Expanded(child: HorizontalContainer()),
                  NumberContainer(n: 2),
                  Expanded(child: HorizontalContainer()),
                  NumberContainer(n: 3),
                  Spacer(),
                ],
              ),
              _sizedBox,
              Row(
                children: const [
                  Spacer(),
                  TextContainer(text: "Personal Details"),
                  Spacer(),
                  TextContainer(text: "Joining Details"),
                  Spacer(),
                  TextContainer(text: "Employee Permission"),
                  Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NumberContainer extends StatelessWidget {
  final int n;
  const NumberContainer({
    Key? key,
    required this.n,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 100,
          width: 100,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
          ),
          child: Text(
            "$n",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 50,
            ),
          ),
        ),
      ],
    );
  }
}

class TextContainer extends StatelessWidget {
  final String text;
  const TextContainer({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Text(
        text.replaceAll(' ', '\n'),
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class HorizontalContainer extends StatelessWidget {
  const HorizontalContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      color: Colors.blue,
    );
  }
}

class RightCheckMarkContainer extends StatelessWidget {
  const RightCheckMarkContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 5.0, color: Colors.blue),
      ),
      child: Container(
        height: 100,
        width: 100,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
        child: const Icon(
          CupertinoIcons.check_mark,
          size: 50,
          color: Colors.white,
        ),
      ),
    );
  }
}
