import 'package:book_store/core/widgets/custom_cashed_network_image.dart';
import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class CustomBookImageItem extends StatelessWidget {
  const CustomBookImageItem({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4, //width/height
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: CustomCashedNetworkImage(
          imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? '',
        ),
      ),
    );
  }
}
