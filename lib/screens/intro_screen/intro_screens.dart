import 'package:flutter/material.dart';
import 'package:rdsboxapp/screens/intro_screen/screen1.dart';
import 'package:rdsboxapp/screens/intro_screen/screen2.dart';
import 'package:rdsboxapp/screens/intro_screen/screen3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class intro_screens extends StatefulWidget {
  const intro_screens({super.key});

  @override
  State<intro_screens> createState() => _intro_screensState();
}

class _intro_screensState extends State<intro_screens> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              Screen1(),
              Screen2(),
              Screen3(),
            ],
          ),
          Container(
              alignment: Alignment(0, 0.94),
              child: SmoothPageIndicator(
                effect: WormEffect(activeDotColor: Colors.amber),
                controller: _controller,
                count: 3,
              ))
        ],
      ),
    );
  }
}
