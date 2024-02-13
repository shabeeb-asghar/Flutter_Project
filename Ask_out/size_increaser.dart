import 'package:flutter/material.dart';
import 'package:ask_her_out/no_button.dart';

class SizeIncreaser extends StatefulWidget {
  const SizeIncreaser(this.OnPressed, {super.key});
  final void Function() OnPressed;
  @override
  State<SizeIncreaser> createState() {
    return _SizeIncreaserState();
  }
}

class _SizeIncreaserState extends State<SizeIncreaser> {
  double fonsize = 24.0;
  double fontsize_no = 24;
  double padding_ho = 50;
  double padding_ve = 10;
  var display;

  @override
  void initState() {
    super.initState();
    display = NoButton(OnPressed_No, padding_ho, padding_ve, fontsize_no);
  }

  void OnPressed_No() {
    setState(() {
      if (fonsize < 121) {
        fonsize += fonsize * 0.5;
        fontsize_no -= fontsize_no * 0.3;
        padding_ho -= padding_ho * 0.3;
        padding_ve -= padding_ve * 0.3;
        display = NoButton(OnPressed_No, padding_ho, padding_ve, fontsize_no);
      } else {
        display = const SizedBox(
          width: 10,
          height: 10,
        );
      }
    });
  }

  @override
  Widget build(context) {
    final void Function() OnPressed = widget.OnPressed;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: OnPressed,
          style: ElevatedButton.styleFrom(
              elevation: 3.0,
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(255, 233, 77, 88),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16))),
          child: Text(
            'Yes',
            style: TextStyle(fontSize: fonsize),
          ),
        ),
        const SizedBox(
          width: 27,
        ),
        display,
      ],
    );
  }
}
