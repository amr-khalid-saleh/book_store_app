import 'package:book_store/core/utils/text_style_manager.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Book Store', style: TextStyleManager.regular30),
        const Spacer(),
        IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 28)),
      ],
    );
  }
}
