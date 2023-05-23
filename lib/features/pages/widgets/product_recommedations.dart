import 'package:flutter/material.dart';
import 'package:moneyp_e_com_challenge/data/local_dummy_data.dart';
import 'package:moneyp_e_com_challenge/features/pages/product_details.screen.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/product_card.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/spacer.dart';
import 'package:moneyp_e_com_challenge/utils/colors.dart';
import 'package:moneyp_e_com_challenge/utils/text_styles.dart';
import 'package:sizer/sizer.dart';

class ProductRecomendations extends StatelessWidget {
  const ProductRecomendations({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Recommendation',
              style: AppTextStyles.mediumText
                  .copyWith(fontWeight: FontWeight.w600),
            ),
            Text(
              'See more',
              style: AppTextStyles.smallText.copyWith(
                  color: AppColors.primary, fontWeight: FontWeight.w600),
            )
          ],
        ),
        vertical(3.5.h),
        SizedBox(
          height: 30.h,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => SizedBox(
                  width: 50.w,
                  child: ProductCard(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ProductDetailsScreen(model: productList[index]),
                          ),
                        );
                      },
                      model: productList[index])),
              separatorBuilder: (context, index) => horizontal(5.w),
              itemCount: productList.length),
        )
      ],
    );
  }
}
