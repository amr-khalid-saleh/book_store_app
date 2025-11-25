import 'package:book_store/core/utils/text_style_manager.dart';
import 'package:book_store/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:book_store/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: const [
          CustomSearchTextField(),
          SizedBox(height: 20),
          Text('Search Result', style: TextStyleManager.semiBold18),
          SizedBox(height: 16),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
