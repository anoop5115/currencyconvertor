import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/conatiner.dart';

class Currency extends StatelessWidget {
  const Currency({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Contatiner(),
            Contatiner(),
            Container(
              width: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'enter your name',
                        fillColor: Colors.grey,
                        filled: true),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    // cursorRadius: Radius.circular(10),

                    decoration: InputDecoration(
                      hintText: 'enter your name',
                      prefixIcon: Icon(Icons.ac_unit),
                      filled: true,
                      // fillColor: Colors.blueAccent,
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white12, width: 2),
                          borderRadius: BorderRadius.circular(20)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white12, width: 2),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
