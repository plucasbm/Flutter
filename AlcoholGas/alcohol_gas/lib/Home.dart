import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController _controllerAlcohol = TextEditingController();

  TextEditingController _controllerGas = TextEditingController();

  String _resultText = "";

  void _calculate(){
    double alcoholPrice = double.parse(_controllerAlcohol.text);
    double gasPrice = double.parse(_controllerGas.text);

    if(alcoholPrice == null || gasPrice == null){
      setState(() {
        _resultText = "Número inválido. Digite números maiores que zero e utilize o ponto (.) no lugar da vírgula.";
      });
    }else if( (alcoholPrice/gasPrice) >= .7 ){
      setState((){
        _resultText = "Melhor abastecer com gasolina!";
      });
    }else{
      setState((){
        _resultText = "Melhor abastecer com álcool!";
      });
    }
    
    clean();
  }

  void clean(){
    _controllerAlcohol.text = "";
    _controllerGas.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool ou Gasolina"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 32),
              child: Image(
                image: AssetImage("images/logo.png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text("Saiba qual a melhor opção para abastecer o seu carro: ",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Preço Álcool, ex: 3.00",
              ),
              style: TextStyle(
                fontSize: 22,
              ),
              controller: _controllerAlcohol,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Preço Gasolina, ex: 7.00",
              ),
              style: TextStyle(
                fontSize: 22,
              ),
              controller: _controllerGas,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white), 
                ),
                onPressed: _calculate,
                child: Text("Calcular",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(_resultText,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
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