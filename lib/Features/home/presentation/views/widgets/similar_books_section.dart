import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books_item.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textstyle16.copyWith(fontWeight: FontWeight.w900),
        ),
        const SizedBox(height: 16),
        const SimilarBooksItem(),
      ],
    );
  }
}
