import 'package:flutter/material.dart';

class InfraestructuraScreen extends StatelessWidget {
  const InfraestructuraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Encuesta - Infraestructura'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          _cardTipo1(),
          const SizedBox(height: 30.0),
          _boton1(),
          const SizedBox(height: 30.0),
          _boton2(),
          const SizedBox(height: 30.0),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        // ignore: prefer_const_constructors
        child: Icon(Icons.bar_chart_rounded),
        onPressed: () => _mostrarResultado(context),
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: const [
          ListTile(
            leading: Icon(Icons.question_mark_rounded, color: Colors.indigo),
            title:
                Text('¿Estás conforme con las dependencias de este semestre?'),
            subtitle: Text('Fecha límite de votación: 03/04'),
          ),
        ],
      ),
    );
  }

  Widget _boton1() {
    return Container(
      child: ElevatedButton(
        child: Text('Si'),
        onPressed: () => {},
        style: ElevatedButton.styleFrom(
          backgroundColor:  Colors.indigo,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }

  Widget _boton2() {
    return Container(
      child: ElevatedButton(
        child: Text('No'),
        onPressed: () => {},
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.indigo,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )),
      ),
    );
  }

  void _mostrarResultado(context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            title: Text('Resultados'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildRow('Si', 50),
                _buildRow('No', 25),
              ],
            ),
            actions: [
              TextButton(
                child: Text('Ok'),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          );
        });
  }

  Widget _buildRow(String text, double valor) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: <Widget>[
          SizedBox(height: 12),
          Container(height: 2, color: Colors.deepPurple),
          SizedBox(height: 12),
          Row(
            children: <Widget>[
              SizedBox(width: 12),
              Text(text),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                    color: Colors.yellow[900],
                    borderRadius: BorderRadius.circular(20)),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: Text('$valor'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
