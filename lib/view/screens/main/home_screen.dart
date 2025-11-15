import 'package:farshop/controllers/theme_controller.dart';
import 'package:farshop/view/widgets/home/category_chips.dart';
import 'package:farshop/view/widgets/home/custom_search_bar.dart';
import 'package:farshop/view/widgets/home/product/product_grid.dart';
import 'package:farshop/view/widgets/home/sale_banner.dart';
import 'package:flutter/material.dart';
import 'package:farshop/gen/assets.gen.dart';

import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            // header section
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: Assets.images.fotoFaris.provider(),
                    backgroundColor: Colors.transparent,
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello Faris',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      Text(
                        'Good Morning',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  // notification icon
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications_outlined),
                  ),
                  // cart icon
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.shopping_bag_outlined),
                  ),
                  // theme button
                  GetBuilder<ThemeController>(
                    builder: (controller) => IconButton(
                      onPressed: () => controller.toggleTheme(),
                      icon: Icon(
                        controller.isDarkMode
                            ? Icons.light_mode
                            : Icons.dark_mode,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // search bar
            const CustomSearchBar(),

            // sale banner
            const SaleBanner(),

            // category chips
            const CategoryChips(),

            // popular product
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Popular Product',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'See All',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                  ),
                ],
              ),
            ),

            // product grid
            const Expanded(child: ProductGrid()),
          ],
        ),
      ),
    );
  }
}
