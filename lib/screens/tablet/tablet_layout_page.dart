import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/styles.dart';
import 'package:portfolio/screens/widgets/count_container_widget.dart';
import 'package:portfolio/screens/widgets/header_text_widget.dart';
import 'package:portfolio/screens/widgets/myservices_widget.dart';
import 'package:portfolio/screens/widgets/rotating_image_widget.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../widgets/ddownnload_cv_button.dart';
import '../widgets/social_widget.dart';

class TabLayout extends StatefulWidget {
  const TabLayout({super.key});

  @override
  State<TabLayout> createState() => _TabLayoutState();
}

class _TabLayoutState extends State<TabLayout> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: Styles.gradientDecoration,
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: size.height *0.18),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RotatingImageContainer()
                            ],
                          ),
                        ),
                        SizedBox(height: size.width*0.09),
                        Row(
                          children: [
                            HeaderTextWidget(size: size),

                          ],
                        ),
                        const SizedBox(height: 20,),
                        Social_Tab(size: size)
                      ],
                    ),

                  ],

                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: size.width,
                    margin: EdgeInsets.symmetric(horizontal: size.width*0.05),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CountContainerWidget(size: size, text1: '14+', text2: 'Years of', text3: 'Experience',),
                        SizedBox(height: 10,),
                        Divider(color: AppColors.paleSlate,
                          indent: size.width*0.05,
                          endIndent: size.width*0.05,),
                        SizedBox(height: 10,),
                        CountContainerWidget(size: size, text1: '50+', text2: 'Projects', text3: 'Completed',),
                        SizedBox(height: 10,),
                        Divider(color: AppColors.paleSlate,
                          indent: size.width*0.05,
                          endIndent: size.width*0.05,),
                        SizedBox(height: 10,),
                        CountContainerWidget(size: size, text1: '1.5K', text2: 'Happy', text3: 'Customers',),
                        SizedBox(height: 10,),
                        Divider(color: AppColors.paleSlate,
                          indent: size.width*0.05,
                          endIndent: size.width*0.05,),
                        SizedBox(height: 10,),
                        CountContainerWidget(size: size, text1: '1M', text2: 'Awesome', text3: 'Reviews',),
                        SizedBox(height: size.height * 0.035,),
                        GradientText( "My Quality Services",colors: [AppColors.studio,AppColors.paleSlate ],  style: TextStyle(fontFamily: 'Poppins',
                            fontSize: size.width * 0.070,
                            fontWeight: FontWeight.bold),),
                        SizedBox(height: size.height * 0.02,),
                        Text('We put your ideas and thus your wishes in the form of a unique web project that inspires you and your customers.',
                          style: TextStyle(fontWeight: FontWeight.w400, fontSize: size.width*0.0185,  fontFamily: 'Poppins', color: Colors.white),),
                        SizedBox(height: size.height * 0.030,),
                        MyServicesWidget(size : size),
                      ],
                    )
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}



class Social_Tab extends StatelessWidget {
  const Social_Tab({super.key, required this.size });
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width*0.5,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
       DownloadCVButton(),
        SizedBox(height: 20,),
        SocialWidget()
      ],),
    );
  }
}
