import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/spacer.dart';
import 'package:moneyp_e_com_challenge/models/product_model.dart';
import 'package:moneyp_e_com_challenge/models/selection_model.dart';
import 'package:moneyp_e_com_challenge/utils/colors.dart';
import 'package:sizer/sizer.dart';

class ProductDetailsImage extends StatefulWidget {
  final ProductModel model;
  const ProductDetailsImage({super.key, required this.model});

  @override
  State<ProductDetailsImage> createState() => _ProductDetailsImageState();
}

class _ProductDetailsImageState extends State<ProductDetailsImage> {
  List<SelectionModel> pictureSelections = [];
  String mainPicture = '';

  void addPictures(List<String> imageList) {
    for (var i = 0; i < imageList.length; i++) {
      pictureSelections
          .add(SelectionModel(imageList[i], i == 0 ? true : false));
    }
  }

  void getMainPic(List<SelectionModel> imageList) {
    for (var element in imageList) {
      if (element.active == true) {
        mainPicture = element.title;
      }
    }
  }

  @override
  void initState() {
    super.initState();
    addPictures(widget.model.images);
    getMainPic(pictureSelections);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: SizedBox(
            height: 40.h,
            child: Image.asset(mainPicture),
          )
              .animate()
              .slideY(
                  begin: 10,
                  duration: const Duration(
                    milliseconds: 800,
                  ),
                  curve: Curves.easeOut)
              .fadeIn(
                begin: 0.1,
                delay: const Duration(milliseconds: 600),
              )
              .moveX(end: 30),
        ),
        Column(
          children: List.generate(
            widget.model.images.length,
            (index) => Column(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      for (var element in pictureSelections) {
                        element.active = false;
                      }
                      mainPicture = pictureSelections[index].title;
                      pictureSelections[index].active = true;
                    });
                  },
                  child: Container(
                    height: 6.h,
                    width: 6.h,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          color: Colors.black.withOpacity(0.2),
                          offset: const Offset(0, 10),
                        )
                      ],
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: pictureSelections[index].active
                            ? AppColors.primary
                            : Colors.transparent,
                        width: 3,
                      ),
                    ),
                    child: ClipRRect(
                      child: Image.asset(
                        pictureSelections[index].title,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                vertical(2.h),
              ],
            )
                .animate()
                .fadeIn(
                  delay: Duration(milliseconds: 300 * index),
                )
                .scale(),
          ),
        )
     
      ],
    );
  }
}
