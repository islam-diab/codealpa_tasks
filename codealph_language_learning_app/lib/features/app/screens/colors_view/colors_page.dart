import 'package:flutter/material.dart';
import 'package:codealph_language_learning_app/features/app/screens/colors_view/colors_list.dart';
import 'package:codealph_language_learning_app/features/app/widget/item.dart';
import 'package:codealph_language_learning_app/core/theming/app_color.dart';
import 'package:codealph_language_learning_app/core/models/ItemModel.dart';

class ColorsPage extends StatelessWidget {
   ColorsPage({super.key});

  final List<ItemModel> colors = ColorsList.colors;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        centerTitle: true,
        title: const Text('Colors',
            style: TextStyle(
              color: Colors.white,
            ),),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (BuildContext context, int index) {
          return Item(
            item: colors[index],
            color: const Color(0xff79359F),
          );
        },
      ),
    );
  }
}
