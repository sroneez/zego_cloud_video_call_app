import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key, required this.title, required this.upperTitle});
  final String title;
  final String upperTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 110,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Theme.of(context).primaryColor,
          Theme.of(context).shadowColor,
        ])
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20,30,20,0),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              ],
            )
          ],
        ),
      ),
    );
  }
}
