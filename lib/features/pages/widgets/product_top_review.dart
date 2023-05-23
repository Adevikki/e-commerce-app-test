import 'package:flutter/material.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/spacer.dart';
import 'package:moneyp_e_com_challenge/utils/assets.dart';
import 'package:moneyp_e_com_challenge/utils/colors.dart';
import 'package:moneyp_e_com_challenge/utils/text_styles.dart';
import 'package:sizer/sizer.dart';

class ProductTopReviews extends StatelessWidget {
  const ProductTopReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Top Reviews:',
                  style: AppTextStyles.mediumText
                      .copyWith(fontWeight: FontWeight.w600),
                ),
                vertical(2.h),
                SizedBox(
                  width: 35.w,
                  child: Text(
                    'Showing 3 out of 12.6k+ reviews',
                    style: AppTextStyles.smallTextLight,
                  ),
                )
              ],
            ),
            Container(
              height: 5.h,
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: AppColors.greyLight,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  focusColor: AppColors.white,
                  dropdownColor: AppColors.white,
                  value: 'Popular',
                  items: [
                    'Popular',
                    'Recently posted',
                    'Top rated',
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {},
                  style: AppTextStyles.smallText,
                ),
              ),
            ),
            vertical(3.h),
          ],
        ),
        vertical(3.h),
        Column(
          children: List.generate(
            3,
            (index) => Column(
              children: [
                SizedBox(
                  height: 28.h,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 5.h,
                                width: 5.h,
                                child: ClipOval(
                                    child: Image.asset(
                                Assets.shopLogo,
                                  fit: BoxFit.cover,
                                )),
                              ),
                              horizontal(2.w),
                              Text(
                                'Ade Vikki ****',
                                style: AppTextStyles.smallText
                                    .copyWith(fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star_rounded,
                                color: Colors.amber,
                              ),
                              horizontal(3.w),
                              Text(
                                '5.0',
                                style: AppTextStyles.smallText.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              horizontal(3.w),
                              Icon(
                                Icons.more_horiz,
                                color: AppColors.greyLight,
                              )
                            ],
                          ),
                        ],
                      ),
                      vertical(1.h),
                      SizedBox(
                          height: 5.h,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Chip(
                                label: Text(
                                  'Very fast delivery',
                                  style: TextStyle(
                                    fontSize: 8.sp,
                                    color: AppColors.primary,
                                  ),
                                ),
                                backgroundColor: Colors.teal.shade50,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                    color: AppColors.primary,
                                  ),
                                ),
                              ),
                              horizontal(4.w),
                              Chip(
                                label: Text(
                                  'Packaged properly',
                                  style: TextStyle(
                                    fontSize: 8.sp,
                                    color: AppColors.primary,
                                  ),
                                ),
                                backgroundColor: Colors.teal.shade50,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                    color: AppColors.primary,
                                  ),
                                ),
                              ),
                              horizontal(4.w),
                              Chip(
                                label: Text(
                                  'Product in good condition',
                                  style: TextStyle(
                                    fontSize: 8.sp,
                                    color: AppColors.primary,
                                  ),
                                ),
                                backgroundColor: Colors.teal.shade50,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                    color: AppColors.primary,
                                  ),
                                ),
                              ),
                            ],
                          )),
                      vertical(3.h),
                      Text(
                        'According to my expectations. This is the best.\nThank you',
                        style: AppTextStyles.smallText,
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Icon(
                            Icons.thumb_up_rounded,
                            color: AppColors.primary,
                          ),
                          horizontal(2.w),
                          Text(
                            'Helpful?',
                            style: AppTextStyles.verySmallText.copyWith(
                                color: AppColors.primary,
                                fontWeight: FontWeight.w600),
                          ),
                          const Spacer(),
                          Text(
                            'Yesterday',
                            style: AppTextStyles.verySmallTextLight,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 5.h,
                  color: AppColors.greyLight,
                ),
              ],
            ),
          ),
        ),
       
      ],
    );
  }
}
