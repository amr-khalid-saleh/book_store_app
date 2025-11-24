import 'package:book_store/features/home/presentation/views/widgets/trending_book_item.dart';
import 'package:flutter/material.dart';

class TrendingBookListView extends StatelessWidget {
  const TrendingBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.31,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TrendingBookItem(),
          );
        },
      ),
    );
  }
}
