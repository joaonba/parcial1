

import 'package:parcial1/Screens/home.dart';
import 'package:parcial1/Screens/login.dart';
import 'package:parcial1/Screens/registro.dart';




import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    home: PrimeraApp(),
    debugShowCheckedModeBanner: false,
  ));
  
}

class PrimeraApp extends StatefulWidget {
  const PrimeraApp({super.key});

  @override
  State<PrimeraApp> createState() => _PrimeraAppState();
}

class _PrimeraAppState extends State<PrimeraApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      initialRoute: 'login',
      routes: <String, WidgetBuilder>{
        'home' : (_) => const HomeScreen(),

        'login' : (_) => const LoginScreen(),
        'registro' : (_) => const RegistroScreen()
        
      },
    );
  }
}