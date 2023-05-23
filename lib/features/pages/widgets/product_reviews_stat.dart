import 'package:flutter/material.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/spacer.dart';
import 'package:moneyp_e_com_challenge/models/product_model.dart';
import 'package:moneyp_e_com_challenge/utils/colors.dart';
import 'package:sizer/sizer.dart';

class ProductReviewsStat extends StatelessWidget {
  final ProductModel model;
  const ProductReviewsStat({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              Icons.star_rounded,
              color: Colors.amber,
              size: 16.sp,
            ),
            horizontal(2.w),
            Text(
              '${model.rating} Ratings',
              style: TextStyle(
                color: AppColors.greyLight,
              ),
            )
          ],
        ),
        Container(
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            color: AppColors.greyLight,
            shape: BoxShape.circle,
          ),
        ),
        Text(
          '55k + Reviews',
          style: TextStyle(
            color: AppColors.greyLight,
          ),
        ),
        Container(
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            color: AppColors.greyLight,
            shape: BoxShape.circle,
          ),
        ),
        Text(
          '17k + Sold',
          style: TextStyle(
            color: AppColors.greyLight,
          ),
        ),
      ],
    );
  }
}
