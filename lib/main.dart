import 'package:app4/screens/second_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp4());
}

class MyApp4 extends StatelessWidget {
  const MyApp4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegación app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
      ),
      home: MyHomeScreen(),
    );
  }
}

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navegación app'),
        centerTitle: true,
        backgroundColor: Color(0xFFE9967A),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Primera pantalla',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton.icon(
              onPressed: () {
                //print('Presiono el botón de Ir a siguiente');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondScreen(),
                  ),
                );
              },
              icon: Icon(Icons.arrow_circle_right_outlined),
              label: Text('Ir a siguiente'))
        ],
      ),
      backgroundColor: Color(0xFFFFE4B5),
    );
  }
}
