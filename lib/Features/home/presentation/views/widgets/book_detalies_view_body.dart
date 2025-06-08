import 'package:bookly_app/Features/home/presentation/views/widgets/books_details_section.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_details_view_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetaliesViewBody extends StatelessWidget {
  const BookDetaliesViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsViewAppBar(),
                BooksDetailsSection(),
                SizedBox(height: 49),
                SimilarBooksSection(),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
