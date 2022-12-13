import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({
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
                'https://i.pinimg.com/474x/b1/79/db/b179dbae00079dac49067e528b3872f7--inside-out-sadness.jpg')),
        ListTile(
          contentPadding: EdgeInsets.only(left: 25, bottom: 15, top: 10),
          leading: Icon(
            Icons.account_circle_outlined, color: Colors.indigo
          ),
          title: Text('Vania Palacio G.'),
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
