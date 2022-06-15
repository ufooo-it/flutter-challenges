import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram/src/routes/routes.dart';

class InstagramApp extends StatefulWidget {
  const InstagramApp({Key? key}) : super(key: key);

  @override
  State<InstagramApp> createState() => _InstagramAppState();
}

class _InstagramAppState extends State<InstagramApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      splitScreenMode: false,
      builder: (context, child) => MaterialApp.router(
        routeInformationParser: AppRoute.router.routeInformationParser,
        routerDelegate: AppRoute.router.routerDelegate,
        themeMode: ThemeMode.light,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
            shadowColor: Colors.black,
            foregroundColor: Colors.black,
          ),
          scaffoldBackgroundColor: Colors.white,
          splashFactory: NoSplash.splashFactory,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedItemColor: Colors.black,
          ),
        ),
        darkTheme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.black,
            elevation: 0,
            shadowColor: Colors.white,
          ),
          scaffoldBackgroundColor: Colors.black,
        ),
      ),
    );
  }
}
