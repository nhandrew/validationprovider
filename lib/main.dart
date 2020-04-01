import 'package:flutter/material.dart';
import 'package:validation_provider/src/screens/signup.dart';
import 'package:provider/provider.dart';
import 'package:validation_provider/src/validation/signup_validation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignupValidation(),
          child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Signup(),
      ),
    );
  }
}

