
import 'package:layout/menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
} // roda e inicializa o app

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  build(BuildContext context) {
    return MaterialApp( //define o corpo principal do app
      theme: ThemeData ( //define a aparência principal do app
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 255, 59, 59)), //Define um conjunto de cores usado para o tema do aplicativo
        useMaterial3: true // suaviza a cor do schema
      ),
      debugShowCheckedModeBanner: false, //tira a faixa de debug
      home: Menu(), //define que o menu será exibido como página inicial
 
    );
  }
}