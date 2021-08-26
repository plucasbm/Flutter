import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(
    MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "A persistência é o caminho do êxito. - Charles Chaplin",
    "As pessoas costumam dizer que a motivação não dura sempre. Bem, nem o efeito do banho, por isso recomenda-se diariamente. - Zig Ziglar",
    "Motivação é a arte de fazer as pessoas fazerem o que você quer que elas façam porque elas o querem fazer. - Dwight Eisenhower",
    "Toda ação humana, quer se torne positiva ou negativa, precisa depender de motivação. - Dalai Lama",
    "No meio da dificuldade encontra-se a oportunidade. - Autor Desconhecido",
    "Eu faço da dificuldade a minha motivação. A volta por cima vem na continuação. - Charlie Brown Jr.",
    "A verdadeira motivação vem de realização, desenvolvimento pessoal, satisfação no trabalho e reconhecimento. - Frederick Herzberg",
    "Pedras no caminho? Eu guardo todas. Um dia vou construir um castelo. - Nemo Nox",
    "É parte da cura o desejo de ser curado. - Sêneca",
    "Tudo o que um sonho precisa para ser realizado é alguém que acredite que ele possa ser realizado. - Robert Shinyashiki",
    "O que me preocupa não é o grito dos maus. É o silêncio dos bons. - Martin Luther King",
    "O insucesso é apenas uma oportunidade para recomeçar com mais inteligência. - Henry Ford",
    "Você precisa fazer aquilo que pensa que não é capaz de fazer. - Eleanor Roosevelt",
    "O sucesso é ir de fracasso em fracasso sem perder o entusiasmo. - Autor Desconhecido",
    "Só se pode alcançar um grande êxito quando nos mantemos fiéis a nós mesmos. - Friederich Nietzche",
    "Lute com determinação, abrace a vida com paixão, perca com classe e vença com ousadia, porque o mundo pertence a quem se atreve e a vida é muito para ser insignificante. - Augusto Branco",
    "Nossa maior fraqueza está em desistir. O caminho mais certo de vencer é tentar mais uma vez. - Thomas Edison",
    "Por vezes sentimos que aquilo que fazemos não é senão uma gota de água no mar. Mas o mar seria menor se lhe faltasse uma gota. - Madre Teresa de Calcutá",
    "Coragem é a resistência ao medo, domínio do medo, e não a ausência do medo. - Mark Twain",
    "Quando uma criatura humana desperta para um grande sonho e sobre ele lança toda a força de sua alma, todo o universo conspira a seu favor. - Johann Goethe",
    "Na vida, não existem soluções. Existem forças em marcha: é preciso criá-las e, então, a elas seguem-se as soluções. - Antoine de Saint-Exupéry",
    "Quem quer vencer um obstáculo deve armar-se da força do leão e da prudência da serpente. - Pindaro",
    "O entusiasmo é a maior força da alma. Conserva-o e nunca te faltará poder para conseguires o que desejas. - Napoleon Hill",
    "Quer você acredite que consiga fazer uma coisa ou não, você está certo. - Henry Ford",
    "O verdadeiro homem mede a sua força quando se defronta com o obstáculo. - Antoine de Saint-Exupéry",
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase";

  void _gerarFrases(){
    var indiceAleatorio = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[indiceAleatorio];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Frases do Dia"),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/logo.png"),
            Text(
              _fraseGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
            ),
            ElevatedButton(
              onPressed: _gerarFrases,
              child: Text(
                "Gerar Frase",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              ),
            ),
          ],
        ),
      ),
    );
  }
}