import 'package:flutter/material.dart';

class Clubpage extends StatefulWidget {
  const Clubpage({Key? key}) : super(key: key);

  @override
  State<Clubpage> createState() => _ClubpageState();
}

class _ClubpageState extends State<Clubpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Club page")),
    );
  }
}
