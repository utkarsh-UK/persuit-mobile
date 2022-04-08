import 'package:flutter/material.dart';

class ScaffoldContainer extends StatelessWidget {
  final List<Widget> children;

  const ScaffoldContainer({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: children),
        ),
      ),
    );
  }
}
