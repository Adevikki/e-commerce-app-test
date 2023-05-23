import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/spacer.dart';
import 'package:moneyp_e_com_challenge/models/product_model.dart';
import 'package:moneyp_e_com_challenge/utils/assets.dart';
import 'package:moneyp_e_com_challenge/utils/colors.dart';
import 'package:moneyp_e_com_challenge/utils/text_styles.dart';
import 'package:sizer/sizer.dart';

class ProductOwners extends StatelessWidget {
  final ProductModel model;
  const ProductOwners({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
        Assets.shopIcon,
          color: AppColors.greyLight,
        ),
        horizontal(2.w),
        Text(
          model.productCategory,
          style: AppTextStyles.mediumText.copyWith(
            color: AppColors.greyLight,
          ),
        ),
      ],
    ).animate().fade(duration: const Duration(milliseconds: 800)).slideX();
  }
}
