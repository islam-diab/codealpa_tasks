import 'package:flutter/material.dart';
import 'package:codealph_language_learning_app/core/models/ItemModel.dart';

class ItemContent extends StatelessWidget {
  const ItemContent({required this.item, super.key});
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(item.enName,
                  style: const TextStyle(color: Colors.white, fontSize: 18)),
              Text(item.jpName,
                  style: const TextStyle(color: Colors.white, fontSize: 18)),
            ],
          ),
        ),
        const Spacer(flex: 1),
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: IconButton(
            onPressed: () {
              item.playSound();
            },
            icon: const Icon(Icons.play_arrow, color: Colors.white, size: 30),
          ),
        ),
      ],
    );
  }
}
