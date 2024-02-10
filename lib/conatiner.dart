import 'package:flutter/material.dart';

class Contatiner extends StatelessWidget {
  const Contatiner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.black38,
      child: Container(
        width: 200,
        height: 100,
        child: Center(child: Text("hello")),
      ),
    );
  }
}
