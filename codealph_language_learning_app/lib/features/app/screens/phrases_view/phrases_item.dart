import 'package:flutter/material.dart';
import 'package:codealph_language_learning_app/features/app/widget/item_content.dart';
import 'package:codealph_language_learning_app/core/models/ItemModel.dart';


class PhrasesItem extends StatelessWidget {
  const PhrasesItem({required this.item, required this.color, super.key});
  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Expanded(child: ItemContent(item: item)),
        ],
      ),
    );
  }
}
