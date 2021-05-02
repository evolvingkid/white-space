import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/providers/provider_list.dart';
import 'core/themes/themes.dart';
import 'screens/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers(),
      child: MaterialApp(
        title: 'White Board',
        theme: themes(),
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
