import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/spacer.dart';
import 'package:moneyp_e_com_challenge/utils/assets.dart';
import 'package:moneyp_e_com_challenge/utils/colors.dart';
import 'package:moneyp_e_com_challenge/utils/text_styles.dart';
import 'package:sizer/sizer.dart';

class ProductDetailsInfo extends StatelessWidget {
  const ProductDetailsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Seller information:',
          style: AppTextStyles.mediumText.copyWith(fontWeight: FontWeight.w600),
        ),
        vertical(3.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                color: Colors.white,
                height: 10.h,
                width: 10.h,
                child: ClipOval(
                  child: Image.asset(
                    Assets.shopLogo,
                  ),
                )),
            horizontal(5.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ShopNpay',
                    style: AppTextStyles.mediumText
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  vertical(1.5.h),
                  Wrap(
                    children: [
                      Text('Active 15 mins ago | ',
                          style: AppTextStyles.verySmallTextLight),
                      Text('57.2 positive feedback',
                          style: AppTextStyles.verySmallTextLight),
                    ],
                  ),
                  vertical(1.5.h),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 0,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side:
                                BorderSide(color: AppColors.primary, width: 2),
                          )),
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 4.w, vertical: 1.h),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(
                              Assets.shopIcon,
                              color: AppColors.primary,
                              height: 2.5.h,
                            ),
                            horizontal(2.w),
                            Text(
                              'Visit Store',
                              style: AppTextStyles.smallText.copyWith(
                                color: AppColors.primary,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
