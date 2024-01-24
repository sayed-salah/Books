import 'package:books_app/features/home/presentation/view/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 20,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: GestureDetector(
                onTap: () {},
                child: const CustomBookImage(
                  imageUrl:
                      'http://books.google.com/books/content?id=u13hVoYVZa8C&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api',
                ),
              ),
            );
          }),
    );
  }
}
