import 'package:flutter/material.dart';
import 'package:consultancy/Empresa.dart';
import 'package:consultancy/Servicos.dart';
import 'package:consultancy/Clientes.dart';
import 'package:consultancy/Contato.dart';

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  void _openEnterprise(){
    Navigator.push(context, 
      MaterialPageRoute(
        builder: (context) => EnterprisePage()
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("ATM Consultoria"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 90),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/logo.png"),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _openEnterprise,
                    child: Image.asset("images/menu_empresa.png"),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ServicesPage()
                        )
                      );
                    },
                    child: Image.asset("images/menu_servico.png"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    child: Image.asset("images/menu_cliente.png"),
                    onTap: (){
                      Navigator.push(context, 
                        MaterialPageRoute(
                          builder: (context) => ClientsPage(),
                        ),
                      );
                    },
                  ),
                  GestureDetector(
                    child: Image.asset("images/menu_contato.png"),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ContactPage()
                        )
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}