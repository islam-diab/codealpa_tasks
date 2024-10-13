import 'package:codealph_language_learning_app/core/models/ItemModel.dart';
import 'package:codealph_language_learning_app/features/app/screens/colors_view/colors_list.dart';
import 'package:codealph_language_learning_app/features/app/screens/family_members_view/family_list.dart';
import 'package:codealph_language_learning_app/features/app/screens/numbers_view/number_list.dart';
import 'package:codealph_language_learning_app/features/app/screens/phrases_view/phrases_list.dart';

class QuizList {
  List<ItemModel> modifiableColors = List.from(ColorsList.colors);
  List<ItemModel> modifiableNumbers = List.from(NumberList.numbers);
  List<ItemModel> modifiableFamily = List.from(FamilyList.familyMembers);
  List<ItemModel> modifiablePhrases = List.from(PhrasesList.phrases);
  static List<ItemModel> quiz = [];
  void quizListd() {
    quiz.clear();
    quiz.addAll(getRandomItems(modifiableNumbers, 2));
    quiz.addAll(getRandomItems(modifiableColors, 2));
    quiz.addAll(getRandomItems(modifiableFamily, 2));
    quiz.addAll(getRandomItems(modifiablePhrases, 2));
  }

  List<ItemModel> getRandomItems(List<ItemModel> list, int count) {
    list.shuffle();
    return list.take(count).toList();
  }
}
