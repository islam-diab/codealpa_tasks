import 'package:codealpha_random_quote_generator/core/app_color.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const CustomButton({
    super.key,
    this.onPressed, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: AppColor.darkGray,
      ),
      child: MaterialButton(
        color: AppColor.darkGray,
        onPressed: onPressed,
        padding: const EdgeInsets.all(16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child:  Text(
        text,
          style: TextStyle(fontSize: 18.0, color: Colors.white),
        ),
      ),
    );
  }
}
