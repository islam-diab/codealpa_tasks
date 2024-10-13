import 'package:codealpha_random_quote_generator/core/app_color.dart';
import 'package:codealpha_random_quote_generator/quote/widget/custom_button.dart';
import 'package:flutter/material.dart';

class QuoteErrorView extends StatelessWidget {
  final void Function()? onPressed;
  const QuoteErrorView({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColor.sofstBlue,
        centerTitle: true,
        title: const Text(
          'Quote Generator',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Error',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const Text(
                    "No Internet Connection",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  CustomButton(
                    text: 'Try Again',
                    onPressed: onPressed,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
