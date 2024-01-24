import 'package:books_app/features/home/data/models/book_model/book_model.dart';
import 'package:books_app/features/home/presentation/view/widgets/book_details_section.dart';
import 'package:books_app/features/home/presentation/view/widgets/custom_book_details_appbar.dart';
import 'package:books_app/features/home/presentation/view/widgets/similar_book_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverFillRemaining(
        hasScrollBody: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomBookDetailsAppBar(),
              BookDetailsSection(
                bookModel: bookModel,
              ),
              const Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              const SimilarBookSection(),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
