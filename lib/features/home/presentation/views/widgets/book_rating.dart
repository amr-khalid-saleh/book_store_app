import 'package:book_store/core/utils/text_style_manager.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star_rate_rounded, color: Color(0xffffdd4f)),
        const SizedBox(height: 6),
        Text('4.7', style: TextStyleManager.medium16),
        const SizedBox(height: 4),
        Text(
          '(354)',
          style: TextStyleManager.medium16.copyWith(color: Color(0xff707070)),
        ),
      ],
    );
  }
}
