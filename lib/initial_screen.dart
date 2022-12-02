import 'package:flutter/material.dart';
import 'package:flutter_application_1/task.dart';

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
        title: Text('Tasks'),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: Duration(milliseconds: 900),
        child: ListView(
          children: [
            Task(
                'Aprender Flutter',
                'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                3),
            Task(
                'Andar de Bike',
                'https://aventurasnabike.com.br/wp-content/uploads/2022/05/bicicleta-emagrece.jpg',
                2),
            Task(
                'Meditar',
                'https://miro.medium.com/max/1400/1*tf_mOK5k59ENA8yZ_I72dQ.jpeg',
                5),
            Task(
                'Ler',
                'https://thumbs.jusbr.com/imgs.jusbr.com/publications/artigos/images/1427507524.jpg',
                4),
            Task(
                'Jogar',
                'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                1),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: Icon(Icons.remove_red_eye),
      ),
    );
  }
}
