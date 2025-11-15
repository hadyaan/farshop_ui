import 'package:farshop/controllers/favorite_controller.dart';
import 'package:farshop/models/product.dart';
import 'package:farshop/utils/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:farshop/gen/assets.gen.dart';
import 'package:get/get.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final int index;
  const ProductCard({super.key, required this.product, required this.index});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      constraints: BoxConstraints(maxWidth: screenWidth * 0.9),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: isDark
                ? Colors.black.withOpacity(0.3)
                : Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              // image
              AspectRatio(
                aspectRatio: 16 / 12,
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(12),
                  ),
                  child: product.image.image(
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // favorite button
              Positioned(
                right: 8,
                top: 8,
                child: GetBuilder<FavoriteController>(
                  builder: (controller) {
                    final isFav = controller.isFavorite(index);

                    return GestureDetector(
                      onTap: () => controller.toggleFavorite(index),
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          isFav ? Icons.favorite : Icons.favorite_border,
                          color: isFav ? Colors.pinkAccent : Colors.black,
                          size: 18,
                        ),
                      ),
                    );
                  },
                ),
              ),

              if (product.oldPrice != null)
                Positioned(
                  left: 8,
                  top: 8,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    // discount text
                    child: Text(
                      '${calculateDiscount(product.price, product.oldPrice!)}% OFF',
                      style: AppTextStyle.withColor(
                        AppTextStyle.withWeight(
                          AppTextStyle.bodySmall,
                          FontWeight.bold,
                        ),
                        Colors.white,
                      ),
                    ),
                  ),
                ),

              Positioned(
                right: 8,
                bottom: 8,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 3,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.55),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    product.location,
                    style: AppTextStyle.withColor(
                      AppTextStyle.labelSmall,
                      Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),

          // product details
          Padding(
            padding: EdgeInsets.all(screenWidth * 0.02),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: AppTextStyle.withColor(
                    AppTextStyle.withWeight(AppTextStyle.h3, FontWeight.bold),
                    Theme.of(context).textTheme.bodyLarge!.color!,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: screenWidth * 0.01),
                Text(
                  product.category,
                  style: AppTextStyle.withColor(
                    AppTextStyle.bodySmall,
                    isDark ? Colors.grey[400]! : Colors.grey[600]!,
                  ),
                ),
                SizedBox(height: screenWidth * 0.01),
                Column(
                  children: [
                    if (product.oldPrice != null) ...[
                      SizedBox(width: screenWidth * 0.01),
                      Text(
                        toRupiah(product.oldPrice.toInt()),
                        style: AppTextStyle.withColor(
                          AppTextStyle.labelSmall,
                          isDark ? Colors.grey[400]! : Colors.grey[600]!,
                        ).copyWith(decoration: TextDecoration.lineThrough),
                      ),
                      Text(
                        toRupiah(product.price.toInt()),
                        style: AppTextStyle.withColor(
                          AppTextStyle.withWeight(
                            AppTextStyle.bodyLarge,
                            FontWeight.bold,
                          ),
                          Theme.of(context).textTheme.bodyLarge!.color!,
                        ),
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String toRupiah(int number) {
    return "Rp${number.toString().replaceAllMapped(RegExp(r'(\d)(?=(\d{3})+(?!\d))'), (match) => "${match[1]}.")}";
  }

  int calculateDiscount(int currentPrice, int oldPrice) {
    return (((oldPrice - currentPrice) / oldPrice) * 100).round();
  }
}
