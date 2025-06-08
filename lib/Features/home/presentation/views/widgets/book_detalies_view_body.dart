import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_details_view_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetaliesViewBody extends StatelessWidget {
  const BookDetaliesViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsViewAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: const CustomBookItem(),
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
        ],
      ),
    );
  }
}
