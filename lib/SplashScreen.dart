import 'dart:async';

import 'package:flutter/material.dart';

class SplashApp extends StatefulWidget {
  const SplashApp({Key? key}) : super(key: key);

  @override
  State<SplashApp> createState() => _SplashAppState();
}

class _SplashAppState extends State<SplashApp> {

  void initState() {
// TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 4), (timer) {
// Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
      Navigator.pushNamed(context, '/login');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Internship"),
      // ),
      body: Center(
        child: Center(
          child: Center(
            child: Column(children: [
              // const Text(
              //   "Intership",
              //   textAlign: TextAlign.center,
              //   //textScaleFactor: 8.0,
              //   style: TextStyle(
              //     fontSize: 50,
              //     color: Colors.red,
              //   ),
              // ),
              // const Text(
              //   "Internship Hering",
              //   textAlign: TextAlign.center,
              //   style: TextStyle(
              //     color: Colors.red,
              //     fontWeight: FontWeight.w300,
              //   ),
              // ),
              // const Text(
              //   "Intership",
              //   textAlign: TextAlign.center,
              //   textScaleFactor: 2.0,
              //   style: TextStyle(
              //     color: Colors.brown,
              //     fontStyle: FontStyle.italic,
              //     fontSize: 20,
              //     letterSpacing: 20,
              //     wordSpacing: 50,
              //   ), //TextAlign
              // ),
              // Row(children: [
              //   Expanded(
              //     child: const Text(
              //       "One",
              //       textAlign: TextAlign.center,
              //       style: TextStyle(
              //           fontSize: 20,
              //           color: Colors.yellowAccent,
              //           fontWeight: FontWeight.w300),
              //     ),
              //   ),
              //   Text(
              //     "Two",
              //     textAlign: TextAlign.center,
              //     style: TextStyle(
              //         fontSize: 40.0,
              //         color: Colors.blue,
              //         fontWeight: FontWeight.w400),
              //   ),
              // ]),
       // Image.asset("image/image/images.png")
             Image.asset('assets/images/icon.png',height: 100,width: 200,),
              Padding(
                padding: const EdgeInsets.all(80.0),
                child:SizedBox(
                  width: 300,
                    child: LinearProgressIndicator()
                )

              )
            ]),
          ),
        ),
      ),
    );
  }
}
