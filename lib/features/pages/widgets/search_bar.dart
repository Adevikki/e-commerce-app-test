import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/spacer.dart';
import 'package:moneyp_e_com_challenge/utils/assets.dart';
import 'package:sizer/sizer.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.h,
      padding: EdgeInsets.symmetric(horizontal: 3.5.w),
      child: Row(
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blueGrey.shade400),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: [
                SvgPicture.asset(
                  Assets.searchIcon,
                  color: Colors.blueGrey.shade400,
                ),
                Expanded(
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.blueGrey.shade800,
                        fontSize: 12.sp),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 3.w),
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.blueGrey.shade400,
                      ),
                      border:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                      enabledBorder:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                      focusedBorder:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                )
              ],
            ),
          )),
          horizontal(5.w),
          SvgPicture.asset(
            Assets.shoppingBagIcon,
            color: Colors.blueGrey.shade600,
          ),
          horizontal(5.w),
          Icon(
            CupertinoIcons.chat_bubble,
            color: Colors.blueGrey.shade600,
          )
        ],
      ),
    );
  }
}
