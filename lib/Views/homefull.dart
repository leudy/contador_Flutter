import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _contador();
  }
}

class _contador extends State<ContadorPage> {
  final textos = new TextStyle(color: Colors.black, fontSize: 30);
  int _conteo = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('NCF -- Statefull'),
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
                '$_conteo',
                style: textos,
              ),
              //Text('Columna 3')
            ]),
      ),
      floatingActionButton: _crearbotones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget _crearbotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: () {
            setState(() {
              _conteo = 0;
            });
          },
        ),
        Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: () {
            setState(() {
              _conteo--;
            });
          },
        ),
        SizedBox(width: 10.0),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              _conteo++;
            });
          },
        )
      ],
    );
  }
}
