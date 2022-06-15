import 'package:flutter/material.dart';
import 'package:instagram/src/modules/camera.dart';
import 'package:instagram/src/modules/messager.dart';

import 'main_navigator.dart';

class MainPageView extends StatefulWidget {
  const MainPageView({Key? key}) : super(key: key);

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  var canSwipePage = true;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: canSwipePage
          ? const PageScrollPhysics()
          : const NeverScrollableScrollPhysics(),
      controller: PageController(initialPage: 1),
      itemCount: 3,
      itemBuilder: (context, index) {
        switch (index) {
          case 0:
            return CameraScreen();
          case 2:
            return MessagerScreen();
          default:
            return MainNavigatorScreen(
              homeHasChange: (value) {
                setState(() {
                  canSwipePage = value;
                });
              },
            );
        }
      },
    );
  }
}
