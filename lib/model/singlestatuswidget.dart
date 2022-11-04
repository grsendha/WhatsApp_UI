import 'package:flutter/material.dart';

class SingleStatusItem extends StatelessWidget {
  final String statusTitle;
  final String statusTime;
  final String statusImage;
  const SingleStatusItem({
    this.statusTitle,
    this.statusTime,
    this.statusImage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 30,
              child: CircleAvatar(
                radius: 26,
                backgroundImage: AssetImage('$statusImage'),
              ),
            ),
          ],
        ),
        Expanded(
          child: ListTile(
            title: Text('$statusTitle'),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 2.0),
              child: Text("$statusTime"),
            ),
          ),
        ),
      ],
    );
  }
}
