import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustomBookItem(imageUrl: 'https://scontent.fcai19-4.fna.fbcdn.net/v/t39.30808-1/410461247_3476785402585573_4289626632729694348_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=110&ccb=1-7&_nc_sid=e99d92&_nc_ohc=AA0rmdv-x84Q7kNvwFasDBh&_nc_oc=AdkCOVP_ygHaQWrfPKnTB4Zvl69MTQcAhFJduSaRMMS8mujdhMm2ARnxEoQn8A0rWiw&_nc_zt=24&_nc_ht=scontent.fcai19-4.fna&_nc_gid=QxrIQ4gA1mUWILe0jOfdoA&oh=00_AfMPtLW6D_kaLj6VkBFwy_vgsiyauo2i-uecfPE_QN3qyQ&oe=684D09EB',),
        ),
        const SizedBox(height: 43),
        Text(
          'The Jungle Book',
          style: Styles.textstyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textstyle18.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(height: 16),

        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 37),

        const BooksAction(),
      ],
    );
  }
}
