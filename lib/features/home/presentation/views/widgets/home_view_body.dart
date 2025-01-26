import 'package:flutter/material.dart';
import 'package:fruits_hub_app/constants.dart';
import 'package:fruits_hub_app/core/widgets/search_text_field.dart';
import 'package:fruits_hub_app/features/home/presentation/views/widgets/best_seller_grid_view.dart';
import 'package:fruits_hub_app/features/home/presentation/views/widgets/best_seller_header.dart';
import 'package:fruits_hub_app/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:fruits_hub_app/features/home/presentation/views/widgets/featured_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: kTopPadding,
                ),
                CustomHomeAppBar(),
                SizedBox(
                  height: 16,
                ),
                SearchTextField(),
                SizedBox(
                  height: 12,
                ),
                FeaturedList(),
                SizedBox(
                  height: 12,
                ),
                BestSellerHeader(),

              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          BestSellerGridView(),
        
        ],
      ),
    );
  }
}
