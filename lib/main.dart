import 'package:farshop/controllers/favorite_controller.dart';
import 'package:farshop/utils/app_theme.dart';
import 'package:farshop/controllers/navigation_controller.dart';
import 'package:farshop/controllers/theme_controller.dart';
import 'package:farshop/view/screens/main_screen.dart';
import 'package:farshop/view/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  Get.put(ThemeController());
  Get.put(NavigationController());
  Get.put(FavoriteController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Far Shop',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: themeController.theme,
      defaultTransition: Transition.fade,
      home: LoginScreen(),
    );
  }
}
