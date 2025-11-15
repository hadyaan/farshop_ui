import 'package:farshop/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Shopping Screen',
          style: AppTextStyle.withColor(
            AppTextStyle.h2,
            Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
