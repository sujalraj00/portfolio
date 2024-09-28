import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class GradientTextWidget extends StatelessWidget {
  const GradientTextWidget({super.key, required this.size, this.alignment,this.text2, this.text1, this.color1, this.color2, this.fSize, this.fw});
  final TextAlign? alignment;
  final String? text2;
  final String? text1;
  final double? fSize;
  final Color?color1;
  final Color?color2;
  final FontWeight? fw;
 final Size size;
  @override
  Widget build(BuildContext context) {
    return GradientText("${text1}\n${text2 ?? ''}", colors: [AppColors.studio, AppColors.paleSlate],
    textAlign: size.width < 600 && alignment != null ? alignment : null,
    style: TextStyle(fontFamily: 'Poppins',
    fontSize: size.width * 0.030,
    fontWeight: FontWeight.bold),);
  }
}
