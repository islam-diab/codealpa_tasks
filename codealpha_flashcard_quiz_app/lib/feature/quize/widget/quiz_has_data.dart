import 'package:codealpha_flashcard_quiz_app/core/constant/colors.dart';
import 'package:codealpha_flashcard_quiz_app/core/models/flashcard.dart';
import 'package:codealpha_flashcard_quiz_app/feature/flashcard/ui/widgets/custom_button.dart';
import 'package:codealpha_flashcard_quiz_app/feature/flashcard/ui/widgets/custom_text_form.dart';
import 'package:flutter/material.dart';

part 'quiz_card.dart';

class QuizHasData extends StatelessWidget {
  final int score;
  final List<Flashcard> flashcards;
  final int currentIndex;
  final TextEditingController controller;
  final Flashcard flashcard;
  final void Function() onPressed;
  const QuizHasData({
    super.key,
    required this.score,
    required this.flashcards,
    required this.currentIndex,
    required this.controller,
    required this.flashcard,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: AppColors.white),
        title: const Text(
          'Quizz',
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            color: AppColors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.darkGray,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Score: $score / ${flashcards.length}',
                style: const TextStyle(fontSize: 24.0, color: AppColors.white),
              ),
              const SizedBox(height: 20),
              QuizCard(
                currentIndex: currentIndex,
                flashcard: flashcard,
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
