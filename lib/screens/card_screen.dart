import 'package:flutter/material.dart';

import 'package:componentes_flutter/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card widget"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 20),
          CustomCardType2(
            name: 'Bosque',
            url:
                'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=2000',
          ),
          SizedBox(height: 20),
          CustomCardType2(
              name: 'Lago',
              url:
                  'https://static.vecteezy.com/system/resources/thumbnails/000/206/269/small_2x/T_1-01.jpg'),
          SizedBox(height: 20),
          CustomCardType2(url: 'https://i.redd.it/7dt9jh1bqgu41.png')
        ],
      ),
    );
  }
}
