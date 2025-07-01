import 'package:flutter/material.dart';

class aboutDrawer extends StatelessWidget {
  const aboutDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: Column(
          children: [
            CircleAvatar(
              // backgroundImage: AssetImage(''),
              backgroundColor: Colors.blue,
            ),
            Text("Iftekher mahmud"),
            Text("Software Engineer"),

          ],
        ),
      ),
    );
  }
}