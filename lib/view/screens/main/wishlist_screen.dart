import 'package:farshop/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Wishlist Screen',
          style: AppTextStyle.withColor(
            AppTextStyle.h2,
            Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
