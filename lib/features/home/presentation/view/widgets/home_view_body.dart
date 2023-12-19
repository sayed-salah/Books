import 'package:books_app/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'custom_list_view_item.dart';
import 'feature_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        FeaturedBooksListView(),
      ],
    );
  }
}
