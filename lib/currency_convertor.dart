import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/conatiner.dart';

class Currency extends StatelessWidget {
  const Currency({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.yellow)),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              width: 400,
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextField(
                    // scrollPadding: EdgeInsets.all(10),
                    decoration: InputDecoration(
                        hintText: 'enter your name',
                        fillColor: Colors.grey,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                                color: Colors.yellowAccent, width: 2)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    // cursorRadius: Radius.circular(10),

                    decoration: InputDecoration(
                      hintText: 'enter your name',
                      prefixIcon: const Icon(Icons.ac_unit),
                      filled: true,
                      fillColor: Colors.grey,
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.red, width: 2),
                          borderRadius: BorderRadius.circular(20)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.white12, width: 2),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    keyboardType: const TextInputType.numberWithOptions(
                        decimal: true, signed: true),
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
