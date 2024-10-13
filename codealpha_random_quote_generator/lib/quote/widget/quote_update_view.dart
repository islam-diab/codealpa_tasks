import 'package:codealpha_random_quote_generator/core/app_color.dart';
import 'package:flutter/material.dart';

class QuoteUpdateView extends StatelessWidget {
  const QuoteUpdateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.sofstBlue,
        title: const Text(
          'Quote Generator',
        ),
      ),
      body: const Center(
        child: CircularProgressIndicator(
          color: AppColor.darkGray,
        ),
      ),
    );
  }
}
