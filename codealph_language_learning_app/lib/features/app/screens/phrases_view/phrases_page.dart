import 'package:flutter/material.dart';
import 'package:codealph_language_learning_app/core/models/ItemModel.dart';
import 'package:codealph_language_learning_app/features/app/screens/phrases_view/phrases_list.dart';
import 'package:codealph_language_learning_app/features/app/widget/item.dart';
import 'package:codealph_language_learning_app/core/theming/app_color.dart';

class PhrasesPage extends StatelessWidget {
   PhrasesPage({super.key});

  final List<ItemModel> phrases = PhrasesList.phrases;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        centerTitle: true,
        title: const Text('Phrases',
            style: TextStyle(
              color: Colors.white,
            )),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (BuildContext context, int index) {
          return Item(
            item: phrases[index],
            color: const Color(0xff50ADC7),
          );
        },
      ),
    );
  }
}
