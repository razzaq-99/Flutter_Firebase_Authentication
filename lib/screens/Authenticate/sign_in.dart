import 'package:flutter/material.dart';
import 'package:flutter_firbase_tutorail/Services/auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      appBar: AppBar(
        backgroundColor: Colors.brown.shade400,
        elevation: 0.0,
        title: const Center(child: Text("Sign in Cafe")),
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          child: ElevatedButton(
              onPressed: () async {
                dynamic result = await _authService.signInAnon();
                if (result == null) {
                  print("error");
                } else {
                  print("Signed In Successfully");
                  print(result);
                }
              },
              child: const Text("Sign In Anon"))),
    );
  }
}
