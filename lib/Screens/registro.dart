import 'package:flutter/material.dart';
import 'package:parcial1/Screens/login.dart';

class RegistroScreen extends StatefulWidget {
  const RegistroScreen({Key? key}) : super(key: key);

  @override
  State<RegistroScreen> createState() => _RegistroScreenState();
}

class _RegistroScreenState extends State<RegistroScreen> {
  final _formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: FractionallySizedBox(
           widthFactor:1, 
            heightFactor: 1,
        child: Column(
          children: [
            Text(
              'Registrarse',
              style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Expanded(
               child: SingleChildScrollView(
               
              child: Container(
                
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Nombre y Apellido',
                          style: TextStyle(color: Colors.green),
                        ),
                        
                      ),
                      TextFormField(
                        autofocus: true,
                        textCapitalization: TextCapitalization.words,
                        initialValue: '',
                        onChanged: (value) {
                          print('value: $value');

                        },

                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5), // Set opacity to 0.5
                         ),
                          decoration: InputDecoration(
                          hintText: 'Juan Perez',
                          filled: true,
                          fillColor: Colors.green.withOpacity(0.2),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                      SizedBox(height: 20),

                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Email',
                          style: TextStyle(color: Colors.green),
                        ),
                        
                      ),
                      TextFormField(
                        initialValue: '',
                        
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5), 
                         ),
                          decoration: InputDecoration(
                          hintText: 'example@example.com',
                          filled: true,
                          fillColor: Colors.green.withOpacity(0.2),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                      SizedBox(height: 20),

                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Numero',
                          style: TextStyle(color: Colors.green),
                        ),
                        
                      ),
                      TextFormField(
                        initialValue: '',
                        
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5), 
                         ),
                          decoration: InputDecoration(
                          hintText: '+ 595 971 456 789',
                          filled: true,
                          fillColor: Colors.green.withOpacity(0.2),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                      SizedBox(height: 20),

                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Fecha De Nacimiento',
                          style: TextStyle(color: Colors.green),
                        ),
                        
                      ),
                      TextFormField(
                        initialValue: '',
                        
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5), 
                         ),
                          decoration: InputDecoration(
                          hintText: 'DD / MM / YYY',
                          filled: true,
                          fillColor: Colors.green.withOpacity(0.2),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                      SizedBox(height: 20),

                     
                      
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Contraseña',
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                      TextFormField(
                        initialValue: '',
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.remove_red_eye),
                          hintText: '*************',
                          filled: true,
                          fillColor: Colors.green.withOpacity(0.2),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.all(10),
                        ),
                        obscureText: true,
                      ),
                      const SizedBox(height: 20),

                       Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Confirmar Contraseña',
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                      TextFormField(
                        initialValue: '',
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.remove_red_eye),
                          hintText: '*************',
                          filled: true,
                          fillColor: Colors.green.withOpacity(0.2),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.all(10),
                        ),
                        obscureText: true,
                      ),
                      const SizedBox(height: 20),

                      Text('Al continuar, usted acepta los'),
                      const Text(
                        'Términos y Condiciones',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 0, 235, 114)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginScreen()),
                          );
                        },
                        child: Text('Registrarme', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                      ),
                      const SizedBox(height: 10),
                      const Text('Ya tienes una cuenta?  Inicia sesión aqui')
                    ],
                  ),
                ),
              ),
               ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}