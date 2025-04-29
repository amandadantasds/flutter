
import 'package:layout/menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData (
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 255, 59, 59)),
        useMaterial3: true
      ),
      debugShowCheckedModeBanner: false,
      home: Menu(),
 
    );
  }
}