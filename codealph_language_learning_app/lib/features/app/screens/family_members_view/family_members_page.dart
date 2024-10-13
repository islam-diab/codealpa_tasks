import 'package:flutter/material.dart';
import 'package:codealph_language_learning_app/features/app/screens/family_members_view/family_list.dart';
import 'package:codealph_language_learning_app/features/app/widget/item.dart';
import 'package:codealph_language_learning_app/core/theming/app_color.dart';
import 'package:codealph_language_learning_app/core/models/ItemModel.dart';

class FamilyMembersPage extends StatelessWidget {
   FamilyMembersPage({super.key});

  final List<ItemModel> familyMembers = FamilyList.familyMembers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        centerTitle: true,
        title: const Text('Family Members',
            style: TextStyle(
              color: Colors.white,
            )),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (BuildContext context, int index) {
          return Item(
            item: familyMembers[index],
            color: const Color(0xff558B37),
          );
        },
      ),
    );
  }
}
