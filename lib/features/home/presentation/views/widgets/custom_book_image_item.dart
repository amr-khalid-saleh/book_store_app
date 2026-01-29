import 'package:book_store/core/widgets/custom_cashed_network_image.dart';
import 'package:book_store/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';

class CustomBookImageItem extends StatelessWidget {
  const CustomBookImageItem({super.key, required this.book});

  final BookEntity book;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4, //width/height
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: CustomCashedNetworkImage(
          imageUrl: book.image,
        ),
      ),
    );
  }
}
