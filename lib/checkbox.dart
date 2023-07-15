import 'package:flutter/material.dart';
class checkbox extends StatefulWidget {
  const checkbox({Key? key}) : super(key: key);

  @override
  State<checkbox> createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {

  bool check=false;
  bool check2=false;
  bool check3=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Row(
            children: [
              Checkbox(value: check, onChanged: (value) {

                setState(() {
                  check=!check;
                });

              },),
              Text("Flutter"),

            ],
          ),
          Row(
            children: [
              Checkbox(value: check2, onChanged: (value) {

                setState(() {
    check2=!check2;
    });
              },),
              Text("Java"),

            ],
          ),
          Row(
            children: [
              Checkbox(value: check3, onChanged: (value) {

                setState(() {
                  check3=!check3;
                });
              },),
              Text("Python"),
            ],
          )
        ],
      ),
    );
  }
}
