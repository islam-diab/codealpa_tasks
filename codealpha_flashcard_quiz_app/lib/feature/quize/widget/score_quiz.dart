import 'package:codealpha_flashcard_quiz_app/core/models/flashcard.dart';
import 'package:codealpha_flashcard_quiz_app/feature/flashcard/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class QuizScore extends StatelessWidget {
  final int score;
  final List<Flashcard> items;
  final List<String> wrongAnswers;
  final void Function()? onPressed;
  const QuizScore({
    super.key,
    required this.score,
    required this.items,
    required this.wrongAnswers,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          'Quiz Score ($score / 8)',
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: onPressed,
        ),
      ),
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: wrongAnswers.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Question:- ${wrongAnswers[index]}',
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          CustomButton(
            text: 'Try Again',
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}
