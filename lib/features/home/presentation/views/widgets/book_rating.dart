import 'package:book_store/core/utils/text_style_manager.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.rating, required this.count});

  final double? rating;
  final int? count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(Icons.star_rate_rounded, color: Color(0xffffdd4f), size: 20),
        const SizedBox(width: 4),
        Text(rating != null ? rating.toString() : '4.7',
            style: TextStyleManager.medium16),
        const SizedBox(width: 6),
        Opacity(
          opacity: 0.5,
          child: Text(
            count != null ? count.toString() : '(354)',
            style: TextStyleManager.medium16.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
