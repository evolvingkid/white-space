import 'package:flutter/material.dart';
import 'widgets/display.dart';
import 'widgets/input_textFeild.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            InputTextFeild(),
            Display(),
          ],
        ),
      ),
    );
  }
}
