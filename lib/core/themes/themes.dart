import 'package:flutter/material.dart';

ThemeData themes() => ThemeData(
      primarySwatch: Colors.blue,
      primaryColor: Colors.blueAccent,
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: Colors.grey[800]),
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(const Radius.circular(30.0)),
        ),
      ),
    );
