import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key, this.text, required this.sSize, this.size, this.fw, this.color, this.alignment});

  final String? text;
  final Size sSize;
  final double? size;
  final  FontWeight? fw;
  final Color? color;
  final TextAlign? alignment;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      textAlign: sSize.width < 600 && alignment!= null ? alignment : null,
      style: TextStyle(
        fontSize: size!= null ? size : sSize.width * 0.040,
        color:  color,
        fontWeight:  fw,
        fontFamily: 'Poppins'
      ),
    );
  }
}
