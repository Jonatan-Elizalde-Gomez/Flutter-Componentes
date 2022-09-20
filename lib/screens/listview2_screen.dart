import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    "Gears Of War",
    "GTA V",
    "Football manager",
    "Euro Truck"
  ];
  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List view 2"),
      ),
      body: ListView(
        children: [
          ...options
              .map((games) => ListTile(
                    title: Text(games),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ))
              .toList()
        ],
      ),
    );
  }
}
