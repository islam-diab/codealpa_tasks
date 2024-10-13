import 'package:codealpha_flashcard_quiz_app/core/constant/colors.dart';
import 'package:flutter/material.dart';

class QuizEmpty extends StatelessWidget {
  const QuizEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Quiz',
            style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: AppColors.black),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: AppColors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(16.0),
            decoration: const BoxDecoration(
              color: AppColors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  spreadRadius: 5.0,
                ),
              ],
            ),
            child: const Center(
              child: Text(
                'No flashcards available.',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
        ),
      );
  }
}