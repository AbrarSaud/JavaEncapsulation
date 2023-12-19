import 'package:athkar_app/shared/txt_style.dart';
import 'package:athkar_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AthkarCountComponent extends StatefulWidget {
  const AthkarCountComponent({super.key, required this.athkarCount});
  final int athkarCount;

  @override
  State<AthkarCountComponent> createState() => _AthkarCountComponentState();
}

class _AthkarCountComponentState extends State<AthkarCountComponent> {
  @override
  Widget build(BuildContext context) {
    int _counter = widget.athkarCount;
    return Stack(
      alignment: Alignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              print(' 1 :$_counter');

              _counter = _counter - 1;
              print(' 2 :$_counter');
              print(' 3 :$_counter');
            });
          },
          child: Container(
            margin: const EdgeInsets.all(4),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(width: 1.5, color: primary),
            ),
            child: Text(
                // '$_counter'
                _counter.toString(),
                style: subStyle.copyWith(color: primary, fontSize: 15.0)),
          ),
        ),
      ],
    );
  }
}
