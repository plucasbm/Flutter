import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({ Key? key }) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Fale Conosco"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset("images/detalhe_contato.png"),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text("Contatos",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightGreen,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 16, bottom: 16),
              child: Text("E-mail: atm@consultoria.com"),
            ),
            Text("Telefone: (87) 99999-9999"),
          ],
        ),
      ),
    );
  }
}