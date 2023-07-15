import 'package:flutter/material.dart';
class radiobutton extends StatefulWidget {
  const radiobutton({Key? key}) : super(key: key);

  @override
  State<radiobutton> createState() => _radiobuttonState();
}

class _radiobuttonState extends State<radiobutton> {
  get codeninjas => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text('_title')
        ),
        body: Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}
enum BestSite{codingninjas,gfg,leetcode}
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}
class _MyStatefulWidgetState extends State<MyStatefulWidget>{
  BestSite _site = BestSite.codingninjas;
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('www.codingninjas.com'),
          leading: Radio(value: BestSite.codingninjas,
              groupValue: _site, onChanged: (BestSite? value){
            setState(() {
              _site=value!;
            });
              }
              ),
        ),
        ListTile(
          title: const Text('www.gfg.com'),
          leading: Radio(value: BestSite.gfg,
              groupValue: _site, onChanged: (BestSite? value){
            setState(() {
              _site=value!;
            });
              },
              ),
        ),
        ListTile(
          title: const Text('www.leetcode.com'),
          leading: Radio(value: BestSite.leetcode,
              groupValue: _site, onChanged: (BestSite? value){
            setState(() {
              _site=value!;
            });
              }),
        )
      ],
    );
  }
}