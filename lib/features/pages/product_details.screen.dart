import 'package:flutter/material.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/about_product_items.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/product_bottom_summary.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/product_delivery_info.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/product_description.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/product_details_app_bar.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/product_details_images.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/product_details_tab.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/product_owners.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/product_pagination_bar.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/product_recommedations.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/product_review_ratings.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/product_review_with_images.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/product_reviews_stat.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/product_shop_info.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/product_title.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/product_top_review.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/spacer.dart';
import 'package:moneyp_e_com_challenge/models/product_model.dart';
import 'package:moneyp_e_com_challenge/utils/colors.dart';
import 'package:sizer/sizer.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductModel model;
  const ProductDetailsScreen({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: productDetailsAppBar(),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductDetailsImage(model: model),
                    vertical(2.h),
                    ProductOwners(model: model),
                    vertical(1.h),
                    ProductTitle(model: model),
                    vertical(3.h),
                    ProductReviewsStat(model: model),
                    vertical(3.h),
                    const ProductDetailsTab(),
                    vertical(3.5.h),
                    AboutProductItems(
                      model: model,
                    ),
                    Divider(height: 5.h, color: AppColors.greyLight),
                    const ProductDescription(),
                    Divider(height: 5.h, color: AppColors.greyLight),
                    const ProductDeliveryInfo(),
                    Divider(height: 5.h, color: AppColors.greyLight),
                    const ProductDetailsInfo(),
                    Divider(height: 5.h, color: AppColors.greyLight),
                    ProductReviewAndRatings(model: model),
                    vertical(3.5.h),
                    ProductReviewWithImages(model: model),
                    Divider(height: 5.h, color: AppColors.greyLight),
                    const ProductTopReviews(),
                    vertical(1.5.h),
                    const ProductPaginationBar(),
                    vertical(5.h),
                    const ProductRecomendations(),
                    vertical(3.5.h),
                  ],
                ),
              ),
            ),
          ),
          ProductBottomSummary(
            model: model,
          ),
        ],
      ),
    );
  }
}
