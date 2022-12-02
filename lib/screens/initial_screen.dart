import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/task.dart';

class InitiaScreen extends StatefulWidget {
  const InitiaScreen({super.key});

  @override
  State<InitiaScreen> createState() => _InitiaScreenState();
}

class _InitiaScreenState extends State<InitiaScreen> {
  bool opacidade = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tasks'),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 900),
        child: ListView(
          children: const [
            Task('Aprender Flutter', 'assets/images/flutter.png', 3),
            Task('Andar de Bike', 'assets/images/bike.webp', 2),
            Task('Meditar', 'assets/images/meditar.jpeg', 5),
            Task('Ler', 'assets/images/ler.jpg', 4),
            Task('Jogar', 'assets/images/jogar.jpg', 1),
            SizedBox(height: 80)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
