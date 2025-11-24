import 'package:book_store/core/utils/text_style_manager.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(Icons.star_rate_rounded, color: Color(0xffffdd4f), size: 16),
        const SizedBox(width: 8),
        Text('4.7', style: TextStyleManager.medium16),
        const SizedBox(width: 6),
        Opacity(
          opacity: 0.5,
          child: Text(
            '(354)',
            style: TextStyleManager.medium16.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
