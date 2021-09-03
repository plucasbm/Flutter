import 'package:flutter/material.dart';

class EnterprisePage extends StatefulWidget {
  const EnterprisePage({ Key? key }) : super(key: key);

  @override
  _EnterprisePageState createState() => _EnterprisePageState();
}

class _EnterprisePageState extends State<EnterprisePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Empresa"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset("images/detalhe_empresa.png"),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text("Sobre a empresa",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut nec nibh id magna luctus dignissim non ut mauris. Sed pulvinar, mi ornare pharetra egestas, erat ligula eleifend ex, et condimentum massa tortor vitae ipsum. Quisque in risus quis elit pellentesque luctus sed quis eros. Nam vitae pulvinar urna, eget lobortis ex. Integer eget pellentesque augue. Nunc et faucibus metus. Proin et pellentesque elit. Nulla facilisi. Nam non est euismod, imperdiet arcu tincidunt, fermentum ligula. Vivamus nec lectus vel erat sodales lacinia sed non nulla. Nullam sollicitudin lectus est, vitae ultricies magna lacinia eu. Duis turpis lectus, bibendum a dolor ac, elementum porttitor sem. Proin eget augue interdum, venenatis metus quis, consequat sem.",
              textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}