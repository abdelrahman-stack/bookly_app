import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star, color: Color(0xffFFDD4F)),
        const SizedBox(width: 6.3),
        Text(
          '4.8',
          style: Styles.textstyle16.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 5),

        Text(
          '(2390)',
          style: Styles.textstyle16.copyWith(color: const Color(0xff707070)),
        ),
      ],
    );
  }
}
