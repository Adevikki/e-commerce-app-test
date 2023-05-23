import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/spacer.dart';
import 'package:moneyp_e_com_challenge/utils/assets.dart';
import 'package:sizer/sizer.dart';

AppBar productDetailsAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    iconTheme: const IconThemeData(color: Colors.black),
    elevation: 0,
    actions: [
      const Icon(Icons.favorite_outline_rounded),
      horizontal(4.w),
      const Icon(Icons.share),
      horizontal(4.w),
      SvgPicture.asset(Assets.shoppingBagIcon),
      horizontal(4.w),
    ],
  );
}
