import 'package:flutter/material.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({ Key? key }) : super(key: key);

  @override
  _ServicesPageState createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Serviços"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset("images/detalhe_servico.png"),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text("Nossos Serviços",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text("Consultoria",
                style: TextStyle(
                  fontSize: 18,
                )
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text("Cálculo de Preços",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16),
                child: Text("Acompanhamento de Projetos" , style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}