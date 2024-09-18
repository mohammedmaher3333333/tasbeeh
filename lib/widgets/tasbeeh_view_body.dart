import 'package:flutter/material.dart';
import 'package:tasbeeh/widgets/tasbeeh_list_view.dart';
import 'package:tasbeeh/widgets/tasbeeh_mechanism/tasbeeh_mechanism_body.dart';

class TasbeehViewBody extends StatelessWidget {
  const TasbeehViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/islamic-background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
            child: TasbeehListView(),
          ),
          SizedBox(height: 100,),
          TasbeehMechanismBody()
        ],
      ),
    );
  }
}