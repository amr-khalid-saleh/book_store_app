import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Book Store',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        const Spacer(),
        IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 24)),
      ],
    );
  }
}

