import 'package:book_store/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: const [
          Expanded(
            child: CustomButton(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              backgroundColor: Colors.white,
              textColor: Colors.black,
              text: 'Free',
            ),
          ),
          Expanded(
            child: CustomButton(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              backgroundColor: Color(0xffEF8262),
              textColor: Colors.white,
              text: 'Free Preview',
            ),
          ),
        ],
      ),
    );
  }
}
