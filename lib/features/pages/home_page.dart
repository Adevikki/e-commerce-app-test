import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/bottom_nav_bar.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/home_custom_app_bar.dart';
import 'package:moneyp_e_com_challenge/features/pages/widgets/product_gridwidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        bottomNavigationBar: const BottomNavBar(),
        body: const CustomScrollView(
          slivers: [
            HomeSliverAppBar(),
            ProductGrid(),
          ],
        ),
      ),
    );
  }
}
