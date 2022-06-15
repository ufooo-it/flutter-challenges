import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram/src/routes/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    Future.delayed(const Duration(milliseconds: 2000)).then((value) {
      GoRouter.of(context).go(AppRouter.mainPageView.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Splash')),
      // body: Column(
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Container(
      //       width: 100.w,
      //       height: 100.w,
      //       color: Colors.amber,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.blueGrey,
      //     )
      //   ],
      // ),
    );
  }
}
