import 'package:flutter/material.dart';
import 'package:codealph_language_learning_app/core/theming/app_color.dart';
import 'package:codealph_language_learning_app/features/app/widget/category_item.dart';
import 'package:codealph_language_learning_app/features/app/screens/colors_view/colors_page.dart';
import 'package:codealph_language_learning_app/features/app/screens/family_members_view/family_members_page.dart';
import 'package:codealph_language_learning_app/features/app/screens/numbers_view/numbers_page.dart';
import 'package:codealph_language_learning_app/features/app/screens/phrases_view/phrases_page.dart';
import 'package:codealph_language_learning_app/features/quize/quiz_screen.dart';
import 'package:codealph_language_learning_app/features/quize/widget/custom_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.secondary,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.primary,
        title: const Text(
          'Learn Toku',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          CategoryItem(
              text: 'Numbers',
              color: const Color(0xffEF9235),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  NumbersPage()));
              }),
               CategoryItem(
            text: 'Colors',
            color: const Color(0xff79359F),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ColorsPage()));
            },
          ),
          CategoryItem(
            text: 'FamilyMembers',
            color: const Color(0xff558B37),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>  FamilyMembersPage()));
            },
          ),
         
          CategoryItem(
            text: 'Phrases',
            color: const Color(0xff50ADC7),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>  PhrasesPage()));
            },
          ),
          const Expanded(child: SizedBox.shrink()),
          CustomButton(
            text: 'Start Quiz',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const QuizScreen(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
