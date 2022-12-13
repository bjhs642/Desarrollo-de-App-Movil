import 'dart:ui';
import 'package:flutter/material.dart';

class ParoScreen extends StatelessWidget {
  const ParoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Votación - Paro'),
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
          _boton3(),
          const SizedBox(height: 30.0)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.bar_chart_rounded),
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
            leading: Icon(Icons.flag, color: Colors.indigo),
            title: Text('¿Qué tipo de movilización apoyas?'),
            subtitle: Text('Fecha límite de votación: 03/04'),
          ),
        ],
      ),
    );
  }

  Widget _boton1() {
    return Container(
      child: ElevatedButton(
        child: Text('Toma'),
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
        child: Text('Paro'),
        onPressed: () => {},
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.indigo,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )),
      ),
    );
  }

  Widget _boton3() {
    return Container(
      child: ElevatedButton(
        child: Text('Paro online'),
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
                _buildRow('Toma', 60),
                _buildRow('Paro', 32),
                _buildRow('Paro online', 17),
              ],
            ),
            actions: [
              TextButton(
                child: const Text('Ok'),
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
          Container(height: 2, color: Colors.indigo),
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
