
import 'package:parcial1/Temas/temas.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter',
        style: TextStyle(
          color:Colors.white
        ),),
        backgroundColor: AppTemas.primary,
      ),
      
    );
  }
}