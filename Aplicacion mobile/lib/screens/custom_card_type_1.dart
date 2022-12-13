import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: const [
        CircleAvatar(
            maxRadius: 50,
            backgroundImage: NetworkImage(
                'https://www.elheraldo.co/sites/default/files/styles/widht_760/public/articulo/2018/02/19/electrodomestico.jpg')),
        ListTile(
          contentPadding: EdgeInsets.only(left: 25, bottom: 15, top: 10),
          leading: Icon(
            Icons.account_circle_outlined, color: Colors.indigo
          ),
          title: Text('Benjamin Herrera S.'),
          subtitle: Text(
              'Estudiante de Ingenieria Civil en Computación Mención Informática  '),
        ),
        /* Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Cancel'),
              ),
              TextButton(onPressed: () {}, child: const Text('Ok'))
            ],
          ),
        ) */
      ],
    ));
  }
}
