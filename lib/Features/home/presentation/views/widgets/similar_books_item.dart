import 'package:bookly_app/Features/home/presentation/maneger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksItem extends StatelessWidget {
  const SimilarBooksItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,

            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: CustomBookItem(
                    imageUrl:
                        'https://scontent.fcai19-4.fna.fbcdn.net/v/t39.30808-1/410461247_3476785402585573_4289626632729694348_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=110&ccb=1-7&_nc_sid=e99d92&_nc_ohc=AA0rmdv-x84Q7kNvwFasDBh&_nc_oc=AdkCOVP_ygHaQWrfPKnTB4Zvl69MTQcAhFJduSaRMMS8mujdhMm2ARnxEoQn8A0rWiw&_nc_zt=24&_nc_ht=scontent.fcai19-4.fna&_nc_gid=QxrIQ4gA1mUWILe0jOfdoA&oh=00_AfMPtLW6D_kaLj6VkBFwy_vgsiyauo2i-uecfPE_QN3qyQ&oe=684D09EB',
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMwssage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
