import 'package:flutter/material.dart';
import 'package:heads_or_tails/Home.dart';

class GamePage extends StatefulWidget {
  
  var valor;
  GamePage(this.valor);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {


  @override
  Widget build(BuildContext context) {
    var imagePath;

    if(widget.valor == "coroa"){
      imagePath = "images/moeda_coroa.png";
    }else{
      imagePath = "images/moeda_cara.png";
    }

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 35),
              child: Image.asset(imagePath),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Image.asset("images/botao_voltar.png"),
            ),
          ],
        ),
      ),
    );
  }
}