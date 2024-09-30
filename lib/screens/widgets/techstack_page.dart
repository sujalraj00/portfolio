import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class TechStackPage extends StatefulWidget {
  @override
  _TechStackPageState createState() => _TechStackPageState();
}

class _TechStackPageState extends State<TechStackPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Container(
      height: 300,

      child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Tech icons go here
            Positioned(
              top: 50,
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Opacity(
                    opacity: _controller.value,
                    child:AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                     // transform: Matrix4.rotationZ(isHovered? 0: math.pi /36),
                      height: size.width*0.24,
                      width: size.width*0.24,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/profile.jpeg")
                          ),
                          border: Border.all(color:  AppColors.studio, width: 1.2),
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  );
                },
              ),
            ),
            Positioned(
              bottom: 50,
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Opacity(
                    opacity: _controller.value,
                    child: Image.asset('assets/images/flutter_.jpeg'),
                  );
                },
              ),
            ),
            Positioned(
              left: 50,
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Opacity(
                    opacity: _controller.value,
                    child: Image.asset('assets/images/nodejs.webp'),
                  );
                },
              ),
            ),
            Positioned(
              right: 50,
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Opacity(
                    opacity: _controller.value,
                    child: Image.asset('assets/images/images.jpeg'),
                  );
                },
              ),
            ),

            // More positioned tech icons and lines between them...
            const Positioned(
              child: Center(child: Text("Tech Stack")),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
