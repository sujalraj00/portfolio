import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/screens/widgets/text_widget.dart';

class ProjectCard extends StatefulWidget {
  const ProjectCard({super.key});

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool _isHovered= false;

  @override
  Widget build(BuildContext context) {
    final Size  size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      child: Container(
        height: size.width*0.10,
        width:size.width*0.10,
        decoration: BoxDecoration(
          color: AppColors.ebony.withOpacity(0.8),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.all(50),
              child: Image.asset("assets/images/profile.jpeg"),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedContainer(
                margin: EdgeInsets.all(10),

                curve: Curves.linear,
                height: _isHovered ? size.height*0.15 : 0,
                width: size.width,
                duration: Duration(milliseconds: 400),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.studio
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Container(
                            child: Center(
                              child: TextWidget(
                                color: Colors.white,
                                sSize: size,
                                text: "Web development",
                                size: 18,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Center(
                              child: TextWidget(
                                color: Colors.white,
                                sSize: size,
                                text: "Click to Visit",
                                size: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _onHover(bool isHovered){
    setState(() {
      _isHovered = isHovered;
    });
  }
}
