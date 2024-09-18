import 'package:flutter/material.dart';

class TasbeehMechanismBody extends StatefulWidget {
  const TasbeehMechanismBody({super.key});

  @override
  State<TasbeehMechanismBody> createState() => _TasbeehMechanismBodyState();
}

class _TasbeehMechanismBodyState extends State<TasbeehMechanismBody> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center, // Center-align the children within the Stack
      children: [
        Container(
          width: 200,
          height: 200,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/tasbeeh.png'),
              // Replace with your image
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Overlay Text
        Positioned(
          top: 30,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  // Shadow color with opacity
                  offset: const Offset(4, 4),
                  // Shadow position
                  blurRadius: 10,
                  // Shadow blur radius
                  spreadRadius: 2, // Shadow spread radius
                ),
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  // Lighter shadow for depth
                  offset: const Offset(-2, -2),
                  // Light shadow for additional depth
                  blurRadius: 5,
                  spreadRadius: 1,
                ),
              ],
            ),
            width: 100,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Center(
              child: Text(
                '$counter',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 90,
          right: 40,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 16,
            child: IconButton(
              onPressed: () {
                counter = 0;
                setState(() {});
              },
              icon: const Icon(
                Icons.sync,
                size: 16,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          right: 80,
          left: 80,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 20,
            child: IconButton(
              onPressed: () {
                counter++;
                setState(() {});
              },
              icon: const Icon(
                Icons.add,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
