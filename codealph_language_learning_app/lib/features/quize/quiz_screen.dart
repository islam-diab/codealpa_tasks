import 'package:flutter/material.dart';
import 'package:codealph_language_learning_app/core/models/ItemModel.dart';
import 'package:codealph_language_learning_app/features/quize/widget/quiz_has_data.dart';
import 'package:codealph_language_learning_app/features/quize/widget/quiz_list.dart';
import 'package:codealph_language_learning_app/features/quize/widget/score_quiz.dart';

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
  List<ItemModel> questions = [];
  QuizList quizList = QuizList();

  @override
  void initState() {
    quizList.quizListd();
    questions = QuizList.quiz;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    void submitAnswer() {
      setState(() {
        String userAnswer = _controller.text.trim().toLowerCase();
        String correctAnswer =
            questions[_currentIndex].jpName.trim().toLowerCase();

        // Check if the user's answer is correct
        if (userAnswer != correctAnswer) {
          _wrongAnswers.add(
              '-> ${questions[_currentIndex].enName} ? \n- Correct Answer: ${questions[_currentIndex].jpName}');
        } else {
          _score++;
        }
        _controller.clear();

        if (_currentIndex < questions.length - 1) {
          _currentIndex++;
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return QuizScore(
                  score: _score,
                  items: questions,
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

    final item = questions[_currentIndex];
    return QuizHasData(
      items: questions,
      currentIndex: _currentIndex,
      controller: _controller,
      item: item,
      onPressed: submitAnswer,
    );
  }
}
