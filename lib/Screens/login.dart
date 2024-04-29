import 'package:flutter/material.dart';
import 'package:parcial1/Screens/registro.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      

      backgroundColor: Colors.greenAccent,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              'Bienvenido',
              style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Expanded(
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
                          'Correo',
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                      TextFormField(
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
                          'Contraseña',
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                      TextFormField(
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
                      SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 0, 235, 114)),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            
                          }
                        },
                        child: Text('Iniciar Sesión'),
                      ),
                      SizedBox(height: 10),
                      TextButton(
                        onPressed: () {
                          print('Olvidaste tu contraseña?');
                        },
                        child: Text('Olvidaste tu contraseña?'),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => RegistroScreen()),
                          );
                        },
                        child: Text('Registrarse'),
                      ),
                      Text(' '),
                      Text('or sign up with'),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.facebook_rounded),
                          SizedBox(width: 10), // Agrega un espacio entre los iconos
                          Icon(Icons.g_mobiledata_rounded),
                        ],
                      ),
                    ),
                      

                    ],
                    
                  ),
                
                ),
              ),
            ),
          ],
        ),
      ),
      
    );
    
  }
  
}