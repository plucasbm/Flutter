import 'package:flutter/material.dart';

class ClientsPage extends StatefulWidget {
  const ClientsPage({ Key? key }) : super(key: key);

  @override
  _ClientsPageState createState() => _ClientsPageState();
}

class _ClientsPageState extends State<ClientsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Clientes"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset("images/detalhe_cliente.png"),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text("Nossos Clientes",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Image.asset("images/cliente1.png"),
            ),
            Text("Empresa de Software"),
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Image.asset("images/cliente2.png"),
            ),
            Text("Empresa de Auditoria"),
          ],
        ),
      ),
    );
  }
}