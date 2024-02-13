import 'package:flutter/material.dart';

class NoButton extends StatefulWidget {
  const NoButton(
      this.OnPressed_No, this.padding_ho, this.padding_ve, this.fontsize,
      {super.key});
  final void Function() OnPressed_No;
  final double padding_ho;
  final double padding_ve;
  final double fontsize;
  @override
  State<NoButton> createState() {
    return _NoButtonState();
  }
}

class _NoButtonState extends State<NoButton> {
  @override
  Widget build(context) {
    return ElevatedButton(
        onPressed: widget.OnPressed_No,
        style: ElevatedButton.styleFrom(
          elevation: 2.0,
          padding: EdgeInsets.symmetric(
              horizontal: widget.padding_ho, vertical: widget.padding_ve),
          side: const BorderSide(
              color: Color.fromARGB(255, 233, 77, 88),
              width: 2.0,
              style: BorderStyle.solid),
          foregroundColor: const Color.fromARGB(255, 233, 77, 88),
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Text(
          'No',
          style: TextStyle(fontSize: widget.fontsize),
        ));
  }
}
