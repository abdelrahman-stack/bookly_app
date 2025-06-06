import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 150,
          child: AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  image: AssetImage(AssetsData.testImage),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 30),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  'Harry Potter and the Goblet of Fire',
                  style: Styles.textstyle20.copyWith(fontFamily: kGtSectraFine),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 3),
              Text(
                'J.K. Rowling',
                style: Styles.textstyle14.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 3),

              Row(
                children: [
                  Text(
                    '19.99 €',
                    style: Styles.textstyle20.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  const BookRating(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
