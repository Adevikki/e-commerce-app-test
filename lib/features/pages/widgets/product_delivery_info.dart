import 'package:flutter/material.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/spacer.dart';
import 'package:moneyp_e_com_challenge/utils/text_styles.dart';
import 'package:sizer/sizer.dart';

class ProductDeliveryInfo extends StatelessWidget {
  const ProductDeliveryInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Shipping information',
          style: AppTextStyles.mediumText.copyWith(fontWeight: FontWeight.w600),
        ),
        vertical(3.h),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Delivery:',
              style: AppTextStyles.smallTextLight,
            ),
            horizontal(3.w),
            Text(
              'Shipping from Lagos, Nigeria',
              style:
                  AppTextStyles.smallText.copyWith(fontWeight: FontWeight.w600),
            ),
          ],
        ),
        vertical(3.h),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Delivery:', style: AppTextStyles.smallTextLight),
            horizontal(3.w),
            Text(
              'FREE International Shipping',
              style:
                  AppTextStyles.smallText.copyWith(fontWeight: FontWeight.w600),
            ),
          ],
        ),
        vertical(3.h),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Arrive:',
              style: TextStyle(fontSize: 12.sp, color: Colors.grey.shade500),
            ),
            horizontal(3.w),
            Text(
              'To be decided',
              style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ],
    );
  }
}
