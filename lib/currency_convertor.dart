import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/conatiner.dart';

class Currency extends StatefulWidget {
  const Currency({Key? key}) : super(key: key);

  @override
  State<Currency> createState() => _CurrencyState();
}

class _CurrencyState extends State<Currency> {
  TextEditingController testEditingController = TextEditingController();
  double a = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
            child: Text(
          "currency ",
          style: TextStyle(color: Colors.white),
        )),
      ),
      backgroundColor: Colors.black,
      body: Container(
        // decoration: BoxDecoration(border: Border.all(color: Colors.yellow)),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              // margin: EdgeInsets.all(10),
              width: 400,
              // decoration: BoxDecoration(border: Border.all(color: Colors.red)),s
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    // decoration: BoxDecoration(
                    //     border: Border.all(color: Colors.white24)
                    //     ),
                    child: Center(
                        child: Text(
                      a.toString(),
                      style: TextStyle(fontSize: 20, color: Colors.yellow),
                    )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    // scrollPadding: EdgeInsets.all(10),
                    controller: testEditingController,
                    decoration: InputDecoration(
                        hintText: 'USD',
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
                  // TextField(
                  //   // cursorRadius: Radius.circular(10),

                  //   decoration: InputDecoration(
                  //     hintText: 'INR',
                  //     prefixIcon: const Icon(Icons.ac_unit),
                  //     filled: true,
                  //     fillColor: Colors.grey,
                  //     focusedBorder: OutlineInputBorder(
                  //         borderSide:
                  //             const BorderSide(color: Colors.red, width: 2),
                  //         borderRadius: BorderRadius.circular(20)),
                  //     enabledBorder: OutlineInputBorder(
                  //         borderSide:
                  //             const BorderSide(color: Colors.white12, width: 2),
                  //         borderRadius: BorderRadius.circular(20)),
                  //   ),
                  //   keyboardType: const TextInputType.numberWithOptions(
                  //       decimal: true, signed: true),
                  // ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          a = double.parse(testEditingController.text) * 81;
                        });
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              const MaterialStatePropertyAll(Colors.indigo),
                          fixedSize:
                              const MaterialStatePropertyAll(Size(100, 40)),
                          shape:
                              MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ))),
                      child: const Text(
                        "convert",
                        style: TextStyle(color: Colors.white30),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
