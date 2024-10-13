part of 'flashcard_cubit.dart';

@immutable
abstract class FlashcardState {}

final class FlashcardInitial extends FlashcardState {}

class FlashcardLoading extends FlashcardState {}

class FlashcardSuccess extends FlashcardState {}

class FlashcardError extends FlashcardState {
  final String message;
  FlashcardError(this.message);
}
