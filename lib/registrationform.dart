import 'package:flutter/material.dart';
class registrationform extends StatefulWidget {
  const registrationform({Key? key}) : super(key: key);

  @override
  State<registrationform> createState() => _registrationformState();
}

class _registrationformState extends State<registrationform> {
  @override

  final _registrationformkey=GlobalKey<FormState>();
  var Email=TextEditingController();
  var password=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text("Login Here"),
      ),
      body: Center(
        child: Form(
          key: _registrationformkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: Email,
                  validator: (value) {
                    if (value!.isEmpty){
                      return 'Enter Your Email';
                    }
                  },
                  decoration: InputDecoration(
                      label: Text("Email"),
                      hintText: ("Enter Email"),
                      border: OutlineInputBorder()
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Email")
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: password,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label:Text("password")
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment:Alignment.topRight,
                ),
              ),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(onPressed: () {},
                    child: Text("Login")
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: TextButton(onPressed: () {
                  setState(() {
                    if (_registrationformkey.currentState!.validate()){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Successfully login")));
                    }
                  });
                },
                    child: Text("Create new one")),
              ),
              Text("cnnot forget")
            ],
          ),
        ),
      ),
    );
  }
}
