import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'HomePage',
        style: TextStyle(fontSize: 50),
      ),
    );
  }
}
