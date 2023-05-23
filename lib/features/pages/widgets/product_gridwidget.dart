import 'package:flutter/material.dart';
import 'package:moneyp_e_com_challenge/data/local_dummy_data.dart';
import 'package:moneyp_e_com_challenge/features/pages/product_details.screen.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/product_card.dart';
import 'package:sizer/sizer.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(left: 5.w, right: 5.w, bottom: 3.h),
      sliver: SliverGrid.count(
        childAspectRatio: 0.68,
        crossAxisCount: 2,
        crossAxisSpacing: 3.w,
        mainAxisSpacing: 1.5.h,
        children: List.generate(
          productList.length,
          (index) => ProductCard(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProductDetailsScreen(model: productList[index]),
                ),
              );
            },
            model: productList[index],
          ),
        ),
      ),
    );
  }
}
