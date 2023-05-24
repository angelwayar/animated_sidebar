import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pages/menu_background.dart';
import 'package:animated_sidebar/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool valueMenu = false;
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: Stack(
          children: [
            MenuBackground(
              closeMenu: (value) {
                setState(() {
                  valueMenu = value;
                });
              },
            ),
            HomePage(closeMenu: valueMenu),
          ],
        ),
      ),
    );
  }
}
