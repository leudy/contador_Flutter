import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textos = new TextStyle(color: Colors.black, fontSize: 30);
    final conteo = 10;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('NCF'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Numero de cliks',
                style: textos,
              ),
              Text(
                '$conteo',
                style: textos,
              ),
              //Text('Columna 3')
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //print('Hola Mundo');
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
