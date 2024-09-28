import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/screens/widgets/ddownnload_cv_button.dart';
import 'package:portfolio/screens/widgets/gradient_text_widget.dart';
import 'package:portfolio/screens/widgets/social_section.dart';
import 'package:portfolio/screens/widgets/social_widget.dart';
import 'package:portfolio/screens/widgets/text_widget.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HeaderTextWidget extends StatelessWidget {
  const HeaderTextWidget({super.key, required this.size});
 final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.symmetric(horizontal: size.width * 0.07),
      child: Column(
        crossAxisAlignment: size.width > 600?  CrossAxisAlignment.start: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(child: TextWidget(sSize: size,
          text: 'I am Sujal',
          color: Colors.white,
            size: 26,
            fw: FontWeight.bold,
            alignment: TextAlign.center,
          ),),
          GradientTextWidget(size: size,alignment: TextAlign.center,
            text1: "Flutter Developer",
            text2: "UX Designer",
         ),
          SizedBox(width:  size.width*0.5,
            child:  const Text('I break down the complex user experience problems to create intigrity focused solutions that connect billions of people '
              ,style: TextStyle( fontSize: 16, color: Colors.white, fontFamily: 'Poppins', fontWeight: FontWeight.normal),)),

          // Container(width: size.width*0.5,
          //   child: SocialSection(),
          // )
        ],
      ),
    );
  }
}

class Social_large extends StatelessWidget {
  const Social_large({super.key, required this.size });
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width*0.5,
      child: const Row(children: [
        DownloadCVButton(),
        SizedBox(width: 20,),
        SocialWidget()
      ],),
    );
  }
}

