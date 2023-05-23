import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

class BestSaleProductWidget extends StatelessWidget {
  const BestSaleProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      padding: EdgeInsets.only(left: 5.w, right: 5.w, bottom: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Best Sale Product',
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black),
          ),
          InkWell(
            child: Text(
              'See more',
              style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.teal,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
