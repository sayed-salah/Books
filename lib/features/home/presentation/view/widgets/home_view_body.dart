import 'package:books_app/core/utils/styles.dart';
import 'package:books_app/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'custom_list_view_item.dart';
import 'feature_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 50,
          ),
          Text('Best Seller', style: Styles.textStyle18)
        ],
      ),
    );
  }
}
