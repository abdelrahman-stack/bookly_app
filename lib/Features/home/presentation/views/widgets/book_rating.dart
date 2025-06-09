import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(Icons.star, color: Color(0xffFFDD4F), size: 20),
        const SizedBox(width: 6.3),
        Text(
          '4.8',
          style: Styles.textstyle16.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 5),

        Opacity(
          opacity: .5,
          child: Text(
            '(2390)',
            style: Styles.textstyle16.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
