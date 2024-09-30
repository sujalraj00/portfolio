
import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/styles.dart';
import 'package:portfolio/screens/widgets/count_container_widget.dart';
import 'package:portfolio/screens/widgets/custom_tabbar.dart';
import 'package:portfolio/screens/widgets/gradient_text_widget.dart';
import 'package:portfolio/screens/widgets/header_text_widget.dart';
import 'package:portfolio/screens/widgets/myservices_widget.dart';
import 'package:portfolio/screens/widgets/rotating_image_widget.dart';
import 'package:portfolio/screens/widgets/techstack_page.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class DeskTopLayout extends StatefulWidget {
  const DeskTopLayout({super.key});

  @override
  State<DeskTopLayout> createState() => _DeskTopLayoutState();
}

class _DeskTopLayoutState extends State<DeskTopLayout> with SingleTickerProviderStateMixin {
  late TabController _tabController;


  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
     body: Container(
       height: double.infinity,
       width: double.infinity,
       decoration: Styles.gradientDecoration,
         child: SingleChildScrollView(
         child: Column(

             children: [
         Container(
         margin: EdgeInsets.symmetric( vertical: size.height * 0.18),
           child: Row(
             mainAxisSize: MainAxisSize.min,
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Column(
                 mainAxisSize: MainAxisSize.min,
                 children: [
                   HeaderTextWidget(
                     size: size,
                   ),
                   const SizedBox(height: 20,),
                   Social_large(size: size),

                 ],
               ),

               Expanded(child: Container(


                 child: const Column
                   (
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     RotatingImageContainer()

                   ],
                 ),
               )
               )
             ],
           ),
         ),
               Container(
                 margin: EdgeInsets.symmetric(horizontal: size.width*0.05),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     CountContainerWidget(size: size, text1: '14+', text2: 'Years of', text3: 'Experience',),
                     CountContainerWidget(size: size, text1: '50+', text2: 'Projects', text3: 'Completed',),
                     CountContainerWidget(size: size, text1: '1.5K', text2: 'Happy', text3: 'Customers',),
                     CountContainerWidget(size: size, text1: '1M', text2: 'Awesome', text3: 'Reviews',),
                   ],
                 )
               ),
               SizedBox(height: size.height*0.12,),
               Container(
                 color: AppColors.ebony,
                 padding: EdgeInsets.symmetric(vertical: size.width*0.05,),
                 child: Column(
                   children: [
                     GradientText( "My Quality Services",colors: [AppColors.studio,AppColors.paleSlate ],  style: TextStyle(fontFamily: 'Poppins',
                         fontSize: size.width * 0.030,
                         fontWeight: FontWeight.bold),),
                     SizedBox(height: size.height * 0.02,),
                     Text('We put your ideas and thus your wishes in the form of a unique web project that inspires you and your customers.',
                     style: TextStyle(fontWeight: FontWeight.w400, fontSize: size.width*0.01, fontFamily: 'Poppins', color: Colors.white),),
                     SizedBox(height: size.height * 0.05,),
                     MyServicesWidget(size : size),
                   ],
                 ),
               ),

               TechStackPage(),
               Container(
                 width: size.width,
                 padding: EdgeInsets.symmetric(vertical: size.width *0.05),
                 child: Column(
                   children : [
                     GradientTextWidget(size: size, text1: "My Recent Works"),
                     SizedBox(height : size.height * 0.01),
                     CustomTabBar(tabController: _tabController)
                   ]
                 )
               ),
               Container(
                 height: size.height,
                 child:  CustomTabBarView(tabController: _tabController),),



             ],
     ),
     ),
     )
    );
  }
}
