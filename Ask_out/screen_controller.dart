import 'package:ask_her_out/start_screen.dart';
import 'package:flutter/material.dart';
import 'Yes.dart';

class Controller extends StatefulWidget {
  const Controller({super.key});
  @override
  State<Controller> createState() {
    return _ControllerState();
  }
}

class _ControllerState extends State<Controller> {
  Widget? Active;
  void OnPressed_Yes() {
    setState(() {
      Active = const Yes();
    });
  }

  @override
  void initState() {
    super.initState();
    Active = StartScreen(OnPressed_Yes);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Active,
      ),
    );
  }
}
