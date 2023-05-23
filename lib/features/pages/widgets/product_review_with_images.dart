import 'package:flutter/material.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/spacer.dart';
import 'package:moneyp_e_com_challenge/models/product_model.dart';
import 'package:moneyp_e_com_challenge/utils/colors.dart';
import 'package:moneyp_e_com_challenge/utils/text_styles.dart';
import 'package:sizer/sizer.dart';

class ProductReviewWithImages extends StatelessWidget {
  final ProductModel model;
  const ProductReviewWithImages({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Review with images & videos:',
          style: AppTextStyles.mediumText.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        vertical(3.h),
        SizedBox(
          height: 8.h,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    height: 8.h,
                    width: 8.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ClipRRect(
                      child: Image.asset(
                        model.images[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 8.h,
                    width: 8.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.black38,
                    ),
                    child: Center(
                      child: Text(
                        '132',
                        style: AppTextStyles.smallText.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  )
                ],
              );
            },
            separatorBuilder: (context, index) => horizontal(6.5.w),
            itemCount: model.images.length,
          ),
        ),
        vertical(3.h),
      ],
    );
  }
}
