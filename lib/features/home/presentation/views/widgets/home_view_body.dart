import 'package:book_store/core/utils/text_style_manager.dart';
import 'package:book_store/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:book_store/features/home/presentation/views/widgets/trending_book_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 12.0,
                ),
                child: const CustomAppBar(),
              ),
              TrendingBookListView(),
              const SizedBox(height: 44),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Text('Best Seller', style: TextStyleManager.semiBold18),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: BestSellerListView(),
          ),
        ),
        //for the list to fill the remaining space
        /*const SliverFillRemaining(
          fillOverscroll: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: BestSellerListView(),
          ),
        ),*/
      ],
    );
  }
}
