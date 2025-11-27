import 'package:book_store/core/utils/app_router.dart';
import 'package:book_store/core/utils/text_style_manager.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Book Store', style: TextStyleManager.bold24),
        const Spacer(),
        IconButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kSearchView);
          },
          icon: Icon(Icons.search, size: 28),
        ),
      ],
    );
  }
}
