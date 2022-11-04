import 'package:flutter/material.dart';

class Wcards extends StatelessWidget {
  String name;
  String imageUrl;
  String time;
  Wcards(this.name, this.imageUrl, this.time);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        maxRadius: 25,
        foregroundColor: Colors.grey,
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(
        name,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(time),
    );
  }
}
