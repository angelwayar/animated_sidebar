import 'package:flutter/material.dart';

import '../mocks/data.dart';

class HomePage extends StatefulWidget {
  final bool closeMenu;

  const HomePage({super.key, required this.closeMenu});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  double translationX = 0.0;
  double translationY = 0.0;
  double scale = 1;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    animationController.addListener(() {
      setState(() {
        translationX = animationController.value.clamp(0, 0.78);
        translationY = animationController.value.clamp(0, 0.05);
        scale = (1 - animationController.value).clamp(0.9, 1);
      });
    });
    super.initState();
  }

  @override
  void didUpdateWidget(covariant HomePage oldWidget) {
    if (widget.closeMenu == true) {
      setState(() {
        animationController.reverse();
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        if (details.delta.dx > 2.0) {
          animationController.forward();
        }
      },
      child: Transform(
        transform: Matrix4.translationValues(
          MediaQuery.of(context).size.width * translationX,
          MediaQuery.of(context).size.height * translationY,
          0.0,
        )..scale(scale),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50 * animationController.value),
          child: Scaffold(
            backgroundColor: Colors.blue[50],
            body: Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 24.0),
                    child: Text(
                      'Courses',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 300.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: courses.map((course) => course).toList(),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 24.0),
                    child: Text(
                      'Recent',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: recent.map((course) => course).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
