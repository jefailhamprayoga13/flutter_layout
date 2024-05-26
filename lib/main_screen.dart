import 'package:flutter/material.dart';
import 'package:flutter_layout/detail_screen.dart';
import 'package:flutter_layout/model/phones.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Xiaomi Phones'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final Phones phones = phonesList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(phones: phones);
              }));
            },
            child: ListItem(phones),
          );
        },
        itemCount: phonesList.length,
      ),
    );
  }
}

Widget ListItem(Phones phones) {
  return Card(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        Expanded(
          flex: 1,
          child: Image(
            image: AssetImage(phones.imageAsset),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  phones.name,
                  style: const TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 10),
                Text(phones.released),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}