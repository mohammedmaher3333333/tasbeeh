import 'package:flutter/material.dart';
import 'package:tasbeeh/constant.dart';

class TasbeehListView extends StatelessWidget {
  const TasbeehListView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: PageController(viewportFraction: 0.5),
      scrollDirection: Axis.horizontal,
      itemCount: kTasbeehList.length,
      itemBuilder: (BuildContext context, int index) => Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
        ),
        margin: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            colors: [
              Colors.blueAccent,
              Colors.green,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Center(
          child: Text(
            kTasbeehList[index],
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
