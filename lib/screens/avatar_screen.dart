import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
                backgroundColor: Colors.indigo[900], child: const Text('PY')),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage(
              'https://www.mobafire.com/images/champion/skins/landscape/poppy-hextech-762x.jpg'),
        ),
      ),
    );
  }
}
