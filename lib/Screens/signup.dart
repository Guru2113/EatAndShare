import 'package:flutter/material.dart';
import 'package:eatandshare/Services/api.dart';

TextEditingController username = TextEditingController();
TextEditingController pass = TextEditingController();

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10),
              child: TextFormField(
                controller: username,
                decoration: InputDecoration(
                    label: Text("UserName:"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10),
              child: TextFormField(
                controller: pass,
                decoration: InputDecoration(
                    label: Text("password"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                var data = {
                  "name": username.text,
                  "pass": pass.text,
                };
                api.signUp(data);
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.deepOrangeAccent[100])),
              child: const Text("SignUp",
                  style: TextStyle(color: Colors.deepOrange)),
            )
          ],
        ),
      ),
    );
  }
}