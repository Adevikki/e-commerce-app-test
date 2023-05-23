import 'package:moneyp_e_com_challenge/utils/assets.dart';

import '../models/product_model.dart';
import '../models/tab_item_model.dart';

List<TabItemModel> tabItems = [
  TabItemModel(Assets.categoryIcon, 'Category'),
  TabItemModel(Assets.airplaneIcon, 'Flight'),
  TabItemModel(Assets.receiptIcon, 'Bill'),
  TabItemModel(Assets.earthIcon, 'Data plan'),
  TabItemModel(Assets.coinsIcon, 'Top up'),
];

List<ProductModel> productList = [
  ProductModel(
      name: 'Men Hooded Cardigan Sweater Jacket',
      price: '50.00',
      productCategory: 'Cardigan',
      rating: '5',
      images: [
        Assets.menCloth1,
        Assets.menCloth2,
        Assets.menCloth3,
        Assets.menCloth5,
      ]),
  ProductModel(
      name: 'Men sweater Leather Over Bomber Jacket Black',
      price: '40.00',
      productCategory: 'Jacket',
      rating: '5',
      images: [
        Assets.menCloth2,
        Assets.menCloth3,
        Assets.menCloth5,
        Assets.menCloth1,
      ]),
  ProductModel(
      name: 'Sweet Jacket Hooded Cardigan Sweater Jacket for men',
      price: '55.00',
      productCategory: 'Jacket',
      rating: '3',
      images: [
        Assets.menCloth3,
        Assets.menCloth5,
        Assets.menCloth2,
        Assets.menCloth1,
      ]),
  ProductModel(
      name: 'Sweater Jacket for men all types for men',
      price: '36.00',
      productCategory: 'Jacket',
      rating: '5',
      images: [
        Assets.menCloth5,
        Assets.menCloth1,
        Assets.menCloth2,
        Assets.menCloth3,
      ]),
  ProductModel(
      name: 'PALM ANGELS Pink Sunset Track Vest Purple/Black',
      price: '35.00',
      productCategory: 'Jacket',
      rating: '5',
      images: [
        Assets.menCloth1,
        Assets.menCloth2,
        Assets.menCloth3,
        Assets.menCloth5,
      ]),
  ProductModel(
      name: 'Men sweater Leather Over Bomber Jacket Black',
      price: '50.00',
      productCategory: 'Jacket',
      rating: '5',
      images: [
        Assets.menCloth3,
        Assets.menCloth5,
        Assets.menCloth2,
        Assets.menCloth1,
      ]),
];

  ///tabbar