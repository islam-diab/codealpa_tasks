import 'package:flutter/material.dart';
import 'package:codealph_language_learning_app/features/app/screens/numbers_view/number_list.dart';
import 'package:codealph_language_learning_app/features/app/widget/item.dart';
import 'package:codealph_language_learning_app/core/theming/app_color.dart';
import 'package:codealph_language_learning_app/core/models/ItemModel.dart';

class NumbersPage extends StatelessWidget {
   NumbersPage({super.key});

  final List<ItemModel> numbers = NumberList.numbers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        centerTitle: true,
        title: const Text('Numbers',
            style: TextStyle(
              color: Colors.white,
            )),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (BuildContext context, int index) {
          return Item(
            item: numbers[index],
            color: const Color(0xffEF9235),
          );
        },
      ),
    );
  }
}
