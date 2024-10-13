import 'package:codealpha_flashcard_quiz_app/core/constant/colors.dart';
import 'package:codealpha_flashcard_quiz_app/feature/flashcard/logic/flashcard_cubit.dart';
import 'package:codealpha_flashcard_quiz_app/feature/quize/quiz_screen.dart';
import 'package:codealpha_flashcard_quiz_app/feature/flashcard/ui/widgets/flashcard_tile.dart';
import 'package:codealpha_flashcard_quiz_app/core/models/flashcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'flashcard_form_screen.dart';

class FlashcardListScreen extends StatelessWidget {
  const FlashcardListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flashcards',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.quiz),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const QuizScreen()),
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<FlashcardCubit, FlashcardState>(
        builder: (context, state) {
          List<Flashcard> flashcards =
              context.read<FlashcardCubit>().flashcards!;
          return flashcards.isEmpty
              ? Container(
                  color: Colors.red,
                )
              : Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.red,
                              width: 1.0,
                            )),
                        child: const Text(
                          '‼️ Click on the question to view the answer.',
                          style: TextStyle(color: Colors.redAccent),
                        )),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: flashcards.length,
                      itemBuilder: (context, index) {
                        final flashcard = flashcards[index];
                        return FlashcardTile(
                          flashcard: flashcard,
                          index: index,
                        );
                      },
                    ),
                  ],
                );
        },
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 10,
                offset: const Offset(0, 5)),
          ],
        ),
        child: FloatingActionButton(
          backgroundColor: const Color(0xffFC5185),
          foregroundColor: AppColors.black,
          child: const Icon(Icons.add),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const FlashcardFormScreen()),
            );
          },
        ),
      ),
    );
  }
}
