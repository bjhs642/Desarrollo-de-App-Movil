import 'package:flutter/material.dart';
import 'package:utem_app/screens/custom_card_type_1.dart';
import 'package:utem_app/screens/custom_card_type_2.dart';

class IntegrantesScreen extends StatelessWidget {
  const IntegrantesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listado de Integrantes'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(30.0),
        children: const [
          CustomCardType1(),
            SizedBox(
              height: 30,
            ),
            CustomCardType2()
/*           const SizedBox(height: 30.0),
          CircleAvatar(
            radius: 75,
            child: buildMinMaxAvatar(),
          ),
          const SizedBox(height: 30.0),
          _cardTipo1(),
          const SizedBox(height: 30.0),
          CircleAvatar(
            radius: 75,
            child: buildMinMaxAvatar2(),
          ),
          const SizedBox(height: 30.0),
          _cardTipo2(), */
        ],
      ),
    );
  }

/*   Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: const [
          ListTile(
            contentPadding: EdgeInsets.only(left: 25, bottom: 5, top: 10),
            leading: Icon(Icons.account_box_outlined, color: Colors.purple),
            title: Text('Vania Palacios Gomez'),
            subtitle: Text('Ingeniería Civil en Computación Informática'),
          ),
        ],
      ),



    );
  }

  Widget _cardTipo2() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: const [
          ListTile(
            contentPadding: EdgeInsets.only(left: 25, bottom: 5, top: 10),
            leading: Icon(
              Icons.account_box_outlined,
              color: Colors.purple,
            ),
            title: Text('Benjamin Herrera Santibañez'),
            subtitle: Text('Ingeniería Civil en Computación Informática'),
          ),
        ],
      ),
    );
  }

  Widget buildMinMaxAvatar() {
    final double size = 200;

    return Container(
      width: size,
      height: size,
      child: const Center(
        child: CircleAvatar(
          
          backgroundImage: NetworkImage(
              'https://i.pinimg.com/474x/b1/79/db/b179dbae00079dac49067e528b3872f7--inside-out-sadness.jpg'),
          minRadius: 75,
          maxRadius: 75,
        ),
      ),
    );
  }

  Widget buildMinMaxAvatar2() {
    final double size = 200;

    return Container(
      width: size,
      height: size,
      child: const Center(
        child: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://www.elheraldo.co/sites/default/files/styles/widht_760/public/articulo/2018/02/19/electrodomestico.jpg'),
          minRadius: 75,
          maxRadius: 75,
        ),
      ),
    ); */


    
  }
/*}*/
