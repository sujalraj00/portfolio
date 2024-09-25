
import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/styles.dart';
import 'package:portfolio/screens/widgets/header_text_widget.dart';

class DeskTopLayout extends StatefulWidget {
  const DeskTopLayout({super.key});

  @override
  State<DeskTopLayout> createState() => _DeskTopLayoutState();
}

class _DeskTopLayoutState extends State<DeskTopLayout> {
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
           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisSize: MainAxisSize.min,
             children: [
               Column(
                 children: [
                   Row(
                     children: [
                       HeaderTextWidget(size: size)
                     ],
                   )
                 ],
               ),
               Expanded(child: Container(
                 height: size.height*0.75,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     RotatingImageContainer()
                   ],
                 ),
               )
               )
             ],

     )
       ],
     ),
     ),
     ),
    );
  }
}
