import 'package:farshop/controllers/navigation_controller.dart';
import 'package:farshop/controllers/theme_controller.dart';
import 'package:farshop/utils/page_transition.dart';
import 'package:farshop/view/screens/main/account_screen.dart';
import 'package:farshop/view/screens/main/home_screen.dart';
import 'package:farshop/view/screens/main/shopping_screen.dart';
import 'package:farshop/view/screens/main/wishlist_screen.dart';
import 'package:farshop/view/widgets/navigation/custom_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationController navigationController =
        Get.find<NavigationController>();

    return GetBuilder<ThemeController>(
      builder: (themeController) => Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Obx(
          () => SlideTransitionSwitcher(
            child: IndexedStack(
              key: ValueKey(navigationController.currentIndex.value),
              index: navigationController.currentIndex.value,
              children: const [
                HomeScreen(),
                ShoppingScreen(),
                WishlistScreen(),
                AccountScreen(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const CustomBottomNavbar(),
      ),
    );
  }
}
