// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:codealpha_flashcard_quiz_app/feature/flashcard/logic/flashcard_cubit.dart';
import 'package:codealpha_flashcard_quiz_app/feature/flashcard/ui/Screens/flashcard_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:codealpha_flashcard_quiz_app/core/constant/app_constant.dart';
import 'package:codealpha_flashcard_quiz_app/core/models/flashcard.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(FlashcardAdapter());
  await Hive.openBox<Flashcard>(AppConstant.hiveBox);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FlashcardCubit()..fetchFlashcards(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const FlashcardListScreen(),
      ),
    );
  }
}
