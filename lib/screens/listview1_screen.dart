import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const [
    "Megaman",
    "Metal Gear",
    "Super Smash",
    "Final Fantasy"
  ];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("List view 1"),
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, i) => ListTile(
            title: Text(options[i]),
            trailing: const Icon(Icons.arrow_right),
            onTap: () {},
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
