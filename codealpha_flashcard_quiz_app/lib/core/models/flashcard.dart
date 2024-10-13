// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hive/hive.dart';

part 'flashcard.g.dart';

@HiveType(typeId: 0)
class Flashcard extends HiveObject {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String question;
  @HiveField(2)
  final String answer;

  Flashcard({required this.id, required this.question, required this.answer});

  // factory Flashcard.fromDocumentSnapshot(DocumentSnapshot doc) {
  //   return Flashcard(
  //     id: doc.id,
  //     question: doc['question'],
  //     answer: doc['answer'],

  //   );
  // }
}
