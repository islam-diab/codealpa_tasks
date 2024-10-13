import 'package:codealpha_flashcard_quiz_app/core/models/flashcard.dart';
import 'package:flutter/material.dart';


import 'customed_card.dart';

class FlashcardTile extends StatelessWidget {
  final Flashcard flashcard;
  final int index;

  const FlashcardTile(
      {super.key, required this.flashcard, required this.index});

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      frontTitle: 'Question (${index + 1})',
      frontSubtitle: flashcard.question,
      backTitle: 'Answer (${index + 1})',
      backSubtitle: flashcard.answer,
    );
  }
}