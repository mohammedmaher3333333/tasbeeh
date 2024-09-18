import 'package:flutter/material.dart';
import '../widgets/tasbeeh_view_body.dart';

class TasbeehView extends StatelessWidget {
  const TasbeehView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: TasbeehViewBody()),
    );
  }
}

