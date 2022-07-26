import 'package:flutter/material.dart';

class MyInputDecorationTheme {
  InputDecorationTheme myInputDecorationTheme() => InputDecorationTheme(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        disabledBorder: _buildOutlineInputBorder(Colors.blueGrey),
        enabledBorder: _buildOutlineInputBorder(Colors.grey),
        focusedBorder: _buildOutlineInputBorder(Colors.blue),
        errorBorder: _buildOutlineInputBorder(Colors.red),
        focusedErrorBorder: _buildOutlineInputBorder(Colors.orangeAccent),
        errorStyle: _buildTextStyle(Colors.red),
      );

  OutlineInputBorder _buildOutlineInputBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(
        color: color,
        width: 1,
      ),
    );
  }

  TextStyle _buildTextStyle(Color color, {double size = 16.0}) {
    return TextStyle(
      color: color,
      fontSize: size,
    );
  }
}

class MyButtonTheme {
  ButtonThemeData myButtonTheme() => ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      buttonColor: Colors.blue);
}
