import 'package:codealpha_flashcard_quiz_app/core/constant/app_constant.dart';
import 'package:codealpha_flashcard_quiz_app/core/models/flashcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'flashcard_state.dart';

class FlashcardCubit extends Cubit<FlashcardState> {
  final TextEditingController questionController = TextEditingController();
  final TextEditingController answerController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  List<Flashcard>? flashcards;

  FlashcardCubit() : super(FlashcardInitial());

  void fetchFlashcards() async {
    var flashcard = Hive.box<Flashcard>(AppConstant.hiveBox);
    flashcards = flashcard.values.toList();
    emit(FlashcardSuccess());
  }

  void addFlashcard() {
    emit(FlashcardLoading());
    final question = questionController.text;
    final answer = answerController.text;

    String currentDate = DateTime.now().toString();
    Flashcard newFlashcard = Flashcard(
      id: currentDate,
      question: question,
      answer: answer,
    );
    // hive
    var flashcard = Hive.box<Flashcard>(AppConstant.hiveBox);
    flashcard.add(newFlashcard);
    questionController.clear();
    answerController.clear();
    fetchFlashcards();
    emit(FlashcardSuccess());
  }
}
