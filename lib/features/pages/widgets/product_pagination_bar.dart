import 'package:flutter/material.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/spacer.dart';
import 'package:moneyp_e_com_challenge/utils/colors.dart';
import 'package:moneyp_e_com_challenge/utils/text_styles.dart';

import 'package:sizer/sizer.dart';


class ProductPaginationBar extends StatelessWidget {
  const ProductPaginationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(1.h),
          decoration: BoxDecoration(
              color: AppColors.greyLight.withOpacity(0.2),
              shape: BoxShape.circle),
          child: const Icon(Icons.chevron_left),
        ),
        horizontal(4.w),
        Text(
          '1',
          style: AppTextStyles.smallText,
        ),
        horizontal(4.w),
        Text(
          '2',
          style: AppTextStyles.smallText,
        ),
        horizontal(4.w),
        Text(
          '3',
          style: AppTextStyles.smallText,
        ),
        horizontal(4.w),
        Container(
          padding: EdgeInsets.all(1.h),
          decoration: BoxDecoration(
              color: AppColors.greyLight.withOpacity(0.2),
              shape: BoxShape.circle),
          child: const Icon(Icons.chevron_right),
        ),
        const Spacer(),
        Text(
          'See more',
          style: AppTextStyles.smallText
              .copyWith(color: AppColors.primary, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
