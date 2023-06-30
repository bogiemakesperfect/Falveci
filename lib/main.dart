import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tartarus/Views/Login/LoginView.dart';
import 'package:tartarus/arda.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          getPages: [
            GetPage(name: "/home", page: () => ArdaPage()),
            GetPage(name: "/login", page: () => LoginView()),
          ],
          home: AnimatedSplashScreen(
            splashIconSize: 70.w,
            splash: Lottie.asset(
              "assets/splash.json",
            ),
            nextScreen: ArdaPage(), //LoginView(),
            splashTransition: SplashTransition.fadeTransition,
            pageTransitionType: PageTransitionType.fade,
            animationDuration: Duration(seconds: 2),
            backgroundColor: Color(0xFF08041C),
            duration: 2000,
          ),
        );
      },
    );
  }
}


