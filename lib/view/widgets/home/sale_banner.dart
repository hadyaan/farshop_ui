import 'package:flutter/material.dart';
import 'package:farshop/gen/assets.gen.dart';

class SaleBanner extends StatefulWidget {
  const SaleBanner({super.key});

  @override
  State<SaleBanner> createState() => _SaleBannerState();
}

class _SaleBannerState extends State<SaleBanner> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  final bannerImages = [
    Assets.images.banner1,
    Assets.images.banner2,
    Assets.images.banner3,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Banner
        Padding(
          padding: const EdgeInsets.only(top: 12, bottom: 10),
          child: SizedBox(
            height: 150,
            child: PageView.builder(
              controller: _pageController,
              itemCount: bannerImages.length,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: bannerImages[index].image(
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                );
              },
            ),
          ),
        ),

        // Indicator Dots
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(bannerImages.length, (index) {
            bool isActive = index == currentIndex;

            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: isActive ? 14 : 8,
              height: 8,
              decoration: BoxDecoration(
                color: isActive
                    ? Theme.of(context).primaryColor
                    : Colors.grey.withOpacity(0.4),
                borderRadius: BorderRadius.circular(12),
              ),
            );
          }),
        ),

        const SizedBox(height: 12),
      ],
    );
  }
}
