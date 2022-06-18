import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomText extends StatelessWidget {
  const CustomText({Key? key}) : super(key: key);

  final String text;
  final double fontSize;
  final Color color;
  CustomText({
    this.text = 'مراحب',
    this.fontSize = 16,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'مرحب',
        style: TextStyle(
          color: Colors.green,
          fontSize: 30,
        ),
      ),
    );
  }
}
