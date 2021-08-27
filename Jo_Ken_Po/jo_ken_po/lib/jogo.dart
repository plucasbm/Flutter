import "package:flutter/material.dart";
import "dart:math";

class Jogo extends StatefulWidget {
  const Jogo({ Key? key }) : super(key: key);

  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {

  var _imagemApp = AssetImage("image/padrao.png");
  var _mensagem = "Escolha uma opção abaixo";
  
  void _opcaoSelecionada(String escolhaUsuario){
    var opcoes = ["pedra", "papel", "tesoura"];
    var numero = Random().nextInt(3);
    var escolhaApp = opcoes[numero];
    
    switch(escolhaApp){
      case "pedra":
        setState(() {
          _imagemApp = AssetImage("image/pedra.png");
        });
        break;
      
      case "papel":
        setState(() {
          _imagemApp = AssetImage("image/papel.png");
        });
        break;

      case "tesoura":
        setState(() {
          _imagemApp = AssetImage("image/tesoura.png");
        });
        break;

    }

     if(
          (escolhaUsuario == "pedra" && escolhaApp == "tesoura") ||
          (escolhaUsuario == "tesoura" && escolhaApp == "papel") ||
          (escolhaUsuario == "papel" && escolhaApp == "pedra")
        ){
          setState(() {
            _mensagem = "Você ganhou :)";
          });
        }else if(
          (escolhaApp == "pedra" && escolhaUsuario == "tesoura") ||
          (escolhaApp == "tesoura" && escolhaUsuario == "papel") ||
          (escolhaApp == "papel" && escolhaUsuario == "pedra")
        ){
          setState(() {
            _mensagem = "Você perdeu :'(";
          });
        }else{
          setState(() {
            _mensagem = "Deu empate!!!";
          });
        }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JokenPo"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: 32,
              bottom: 16,
            ),
            child: Text(
              "Escolha do App",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Image(image: _imagemApp),
          Padding(
            padding: EdgeInsets.only(
              top: 32,
              bottom: 16,
            ),
            child: Text(
              _mensagem,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: () => _opcaoSelecionada("pedra"),
                child: Image.asset("image/pedra.png", height: 100),
              ),
              GestureDetector(
                onTap: () => _opcaoSelecionada("papel"),
                child: Image.asset("image/papel.png", height: 100),
              ),
              GestureDetector(
                onTap: () => _opcaoSelecionada("tesoura"),
                child: Image.asset("image/tesoura.png", height: 100),
              ), 
            ],
          ),
        ],
      ),
    );
  }
}