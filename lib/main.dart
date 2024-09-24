// import 'dart:convert';
import 'package:eatandshare/Screens/signup.dart';
import 'package:flutter/material.dart';
import 'Services/api.dart';
// import 'dart:async';
// import 'package:http/http.dart' as http;

void main() {
  runApp(
    const MaterialApp(
      home: MyApp(),
    ),
  );
}

TextEditingController username = TextEditingController();
TextEditingController pass = TextEditingController();

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
            child: TextFormField(
              controller: username,
              decoration: InputDecoration(
                  label: Text("UserName:"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
            child: TextFormField(
              controller: pass,
              decoration: InputDecoration(
                  label: Text("password"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                var b = api.getData();
                print(b);
              },
              child: Text("Login")),
          SizedBox(
            height: 20,
          ),
          Text("Or"),
          SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUp(),
                    ));
              },
              child: Text("SignUp"))
        ]),
      ),
    );
  }
}
