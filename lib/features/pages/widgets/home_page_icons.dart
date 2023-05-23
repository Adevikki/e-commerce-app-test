import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moneyp_e_com_challenge/data/local_dummy_data.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/spacer.dart';
import 'package:moneyp_e_com_challenge/utils/text_styles.dart';
import 'package:sizer/sizer.dart';

class HomePageIcons extends StatelessWidget {
  const HomePageIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      height: 15.h,
      child: Center(
        child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: tabItems.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  vertical(1.h),
                  Container(
                    padding: EdgeInsets.all(2.h),
                    height: 6.h,
                    width: 6.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.07),
                            offset: const Offset(0, 1),
                          )
                        ]),
                    child: SvgPicture.asset(
                      tabItems[index].iconAsset,
                      fit: BoxFit.fitHeight,
                      color: Colors.blueGrey.shade200,
                    ),
                  ),
                  vertical(2.h),
                  Text(
                    (tabItems[index].title),
                    style: AppTextStyles.verySmallText,
                  ),
                ],
              );
            },
            separatorBuilder: (context, index) {
              return horizontal(4.w);
            }),
      ),
    );
  }
}
