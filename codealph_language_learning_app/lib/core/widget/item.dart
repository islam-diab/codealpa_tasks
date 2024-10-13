import 'package:flutter/material.dart';
import 'package:codealph_language_learning_app/features/app/widget/item_content.dart';
import 'package:codealph_language_learning_app/features/app/widget/item_image.dart';
import 'package:codealph_language_learning_app/core/models/ItemModel.dart';

class Item extends StatelessWidget {
  const Item({required this.item, required this.color, super.key});
  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        color: color,
        height: 100,
        child: Row(
          children: [
            ItemImage(item: item),
            Expanded(child: ItemContent(item: item)),
          ],
        ),
      ),
    );
  }
}
