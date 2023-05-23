import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:moneyp_e_com_challenge/models/product_model.dart';
import 'package:sizer/sizer.dart';

class ProductTitle extends StatelessWidget {
  final ProductModel model;
  const ProductTitle({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Text(
      model.name,
      style: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w800,
      ),
    )
        .animate(
          delay: const Duration(milliseconds: 800),
        )
        .fade(
          duration: const Duration(milliseconds: 800),
        );
  }
}
