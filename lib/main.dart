// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp();
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:puzzle_game/colors.dart';
import 'package:puzzle_game/home_screen.dart';
//import 'package:wordsearchpuzzle/ui/screens/play/play_screen.dart';
//import 'package:wordsearchpuzzle/ui/screens/result/result_screen.dart';
//import 'package:wordsearchpuzzle/ui/screens/settings/settings_screen.dart';
import 'package:puzzle_game/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: CustomColors.colorBG,
      ),
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: SplashScreen.routeName,
          page: () => const SplashScreen(),
        ),
        GetPage(
          name: HomeScreen.routeName,
          page: () => const HomeScreen(),
        ),
        // GetPage(
        //   name: SettingsScreen.routeName,
        //   page: () => const SettingsScreen(),
        // ),
        // GetPage(
        //   name: PlayScreen.routeName,
        //   page: () => const PlayScreen(),
        // ),
        // GetPage(
        //   name: ResultScreen.routeName,
        //   page: () => const ResultScreen(),
        // ),
      ],
      initialRoute: SplashScreen.routeName,
    );
  }
}
