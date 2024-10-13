import 'package:codealph_language_learning_app/core/models/ItemModel.dart';
import 'package:flutter/material.dart';
import 'package:codealph_language_learning_app/core/theming/app_color.dart';
import 'package:codealph_language_learning_app/features/app/screens/home_page.dart';
import 'package:codealph_language_learning_app/features/quize/widget/custom_button.dart';
import 'package:codealph_language_learning_app/features/quize/widget/custom_text_form.dart';

part 'quiz_card.dart';

class QuizHasData extends StatelessWidget {
  final List<ItemModel> items;
  final int currentIndex;
  final TextEditingController controller;
  final ItemModel item;
  final void Function() onPressed;
  const QuizHasData({
    super.key,
    required this.items,
    required this.currentIndex,
    required this.controller,
    required this.item,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.secondary,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
                (route) => false);
          },
        ),
        title: const Text(
          'Quizz',
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColor.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              QuizCard(
                currentIndex: currentIndex,
                itemModel: item,
                controller: controller,
              ),
              const SizedBox(
                height: 100,
              ),
              CustomButton(
                text: 'Submit',
                onPressed: onPressed,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
