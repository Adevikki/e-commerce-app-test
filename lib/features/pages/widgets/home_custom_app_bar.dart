import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/home_carousel_slider.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/home_page_icons.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/search_bar.dart';
import 'package:sizer/sizer.dart';

import 'best_sales_product_widget.dart';

class HomeSliverAppBar extends StatelessWidget {
  const HomeSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      titleSpacing: 0,
      title:const SearchBar(),
      toolbarHeight: 10.h,
      collapsedHeight: 18.h,
      pinned: true,
      expandedHeight: MediaQuery.of(context).size.height < 700 ? 60.h : 53.h,
      flexibleSpace: const FlexibleSpaceBar(
        collapseMode: CollapseMode.none,
        titlePadding: EdgeInsets.zero,
        expandedTitleScale: 1,
        title: BestSaleProductWidget(),
        background: Column(
          children: [
            HomeCarouselSlider(),
            HomePageIcons(),
          ],
        ),
      ),
      // flexibleSpace: HomeCarouselSlider(),
    );
  }
}
