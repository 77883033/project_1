import 'package:flutter/material.dart';

class animation extends StatefulWidget {
  const animation({super.key});

  @override
  State<animation> createState() => _animationState();
}

class _animationState extends State<animation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CircleAvatar(
            maxRadius: 50,
            backgroundImage: AssetImage('assets/images/s1.jpg'),
          )
        ],
      ),
      
    );
  }
}
