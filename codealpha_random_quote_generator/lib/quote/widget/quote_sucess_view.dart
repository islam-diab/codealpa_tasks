import 'package:codealpha_random_quote_generator/core/app_color.dart';
import 'package:codealpha_random_quote_generator/quote/quote_cubit/quote_cubit.dart';
import 'package:codealpha_random_quote_generator/quote/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_plus/share_plus.dart';

class QuoteSucessView extends StatelessWidget {
  final QuoteCubit quoteCubit;
  const QuoteSucessView({super.key, required this.quoteCubit});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.sofstBlue,
        centerTitle: true,
        title: const Text(
          'Quote Generator',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: AppColor.sofstBlue,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 6.0,
                      spreadRadius: 2.0,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '"${quoteCubit.quoteModel.quote}"',
                      style: const TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      'Author: ${quoteCubit.quoteModel.author}',
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            CustomButton(
              text: 'Generate a new Quote!',
              onPressed: () {
                context.read<QuoteCubit>().getQuote();
              },
            ),
            const SizedBox(height: 16),
            CustomButton(
              text: 'Share with Social media',
              onPressed: () {
                Share.share(
                  'Quote:${quoteCubit.quoteModel.quote} \nAuthor:${quoteCubit.quoteModel.author}',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
