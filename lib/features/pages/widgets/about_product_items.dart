import 'package:flutter/material.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/spacer.dart';
import 'package:moneyp_e_com_challenge/models/product_model.dart';
import 'package:moneyp_e_com_challenge/utils/text_styles.dart';
import 'package:sizer/sizer.dart';

class AboutProductItems extends StatelessWidget {
  final ProductModel model;
  const AboutProductItems({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Brand: ',
                    style: AppTextStyles.smallTextLight,
                  ),
                  horizontal(1.h),
                  Text(
                    'Hoodie',
                    style: AppTextStyles.smallText
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              vertical(3.h),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'color: ',
                    style: AppTextStyles.smallTextLight,
                  ),
                  horizontal(1.h),
                  Text(
                    model.productCategory,
                    style: AppTextStyles.smallText
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              vertical(3.h),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Condition: ',
                    style: AppTextStyles.smallTextLight,
                  ),
                  horizontal(1.h),
                  Text(
                    'New',
                    style: AppTextStyles.smallText
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
        ),
        horizontal(10.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'color: ',
                    style: AppTextStyles.smallTextLight,
                  ),
                  horizontal(1.h),
                  Text(
                    'Black',
                    style: AppTextStyles.smallText
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              vertical(3.h),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Material: ',
                    style: AppTextStyles.smallTextLight,
                  ),
                  horizontal(1.h),
                  Text(
                    'Wool',
                    style: AppTextStyles.smallText
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              vertical(3.h),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Heavy: ',
                    style: AppTextStyles.smallTextLight,
                  ),
                  horizontal(1.h),
                  Text(
                    '300g',
                    style: AppTextStyles.smallText
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
