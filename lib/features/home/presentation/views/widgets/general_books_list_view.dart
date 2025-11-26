import 'package:book_store/features/home/presentation/views/widgets/book_item.dart';
import 'package:flutter/material.dart';

class GeneralBooksListView extends StatelessWidget {
  const GeneralBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      //to can take height of children
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: BookItem(),
        );
      },
    );
  }
}
