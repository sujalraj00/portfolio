import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/screens/widgets/social_section.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HeaderTextWidget extends StatelessWidget {
  const HeaderTextWidget({super.key, required this.size});
 final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width*0.07, vertical:  size.height*0.15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('I am Sujal', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26, color: Colors.white, fontFamily: 'Poppins'), ),
          GradientText("App Developer +\nUX Designer", colors: [AppColors.studio, AppColors.paleSlate] ,
            style: TextStyle(fontSize: size.width*0.040, fontFamily: 'Poppins', fontWeight: FontWeight.bold),),
          SizedBox(width:  size.width*0.5,
            child:  Text('I break down the complex user experience problems to create intigrity focused solutions that connect billions of people '
              ,style: TextStyle( fontSize: 16, color: Colors.white, fontFamily: 'Poppins'),)),

          Container(width: size.width*0.5,
            child: SocialSection(),
          )
        ],
      ),
    );
  }
}
