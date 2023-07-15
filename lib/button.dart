import 'package:flutter/material.dart';
class Button extends StatefulWidget {
  const Button({Key? key}) : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Siva",
          textScaleFactor: 2.0,
        )

        ),

        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){

              }, child: Text("Login")),
              OutlinedButton(onPressed: (){

              }, child: Text("Login")),
              TextButton(onPressed: (){

              }, child: Text("Login")),



            ],)




        )
    );



  }
}
