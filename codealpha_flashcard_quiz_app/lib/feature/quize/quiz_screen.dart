import 'package:codealpha_flashcard_quiz_app/feature/flashcard/logic/flashcard_cubit.dart';
import 'package:codealpha_flashcard_quiz_app/feature/quize/widget/quiz_empty.dart';
import 'package:codealpha_flashcard_quiz_app/feature/quize/widget/quiz_has_data.dart';
import 'package:codealpha_flashcard_quiz_app/feature/quize/widget/score_quiz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _currentIndex = 0;
  int _score = 0;
  final TextEditingController _controller = TextEditingController();
  final List<String> _wrongAnswers = [];

  @override
  Widget build(BuildContext context) {
    final flashcards = context.read<FlashcardCubit>().flashcards!;

    if (flashcards.isEmpty) {
      return const QuizEmpty();
    }

    void submitAnswer() {
      setState(() {
        String userAnswer = _controller.text.trim().toLowerCase();
        String correctAnswer =
            flashcards[_currentIndex].question.trim().toLowerCase();

        // Check if the user's answer is correct
        if (userAnswer != correctAnswer) {
          _wrongAnswers.add(
              '-> ${flashcards[_currentIndex].question} ? \n- Correct Answer: ${flashcards[_currentIndex].answer}');
        } else {
          _score++;
        }
        _controller.clear();

        if (_currentIndex < flashcards.length - 1) {
          _currentIndex++;
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return QuizScore(
                  score: _score,
                  items: flashcards,
                  wrongAnswers: _wrongAnswers,
                  onPressed: () {
                    setState(() {
                      _currentIndex = 0;
                      _score = 0;
                      _wrongAnswers.clear();
                      _controller.clear();
                      Navigator.of(context).pop();
                    });
                  },
                );
              },
            ),
          );
        }
      });
    }

    final flashcard = flashcards[_currentIndex];
    return QuizHasData(
      score: _score,
      flashcards: flashcards,
      currentIndex: _currentIndex,
      controller: _controller,
      flashcard: flashcard,
      onPressed: submitAnswer,
    );
  }
}
