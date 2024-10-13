import 'dart:math';

import 'package:codealpha_flashcard_quiz_app/core/constant/colors.dart';
import 'package:flutter/material.dart';

class FlipCard extends StatefulWidget {
  final String frontTitle;
  final String frontSubtitle;
  final String backTitle;
  final String backSubtitle;

  const FlipCard({
    super.key,
    required this.frontTitle,
    required this.frontSubtitle,
    required this.backTitle,
    required this.backSubtitle,
  });

  @override
  State<FlipCard> createState() => _FlipCardState();
}

class _FlipCardState extends State<FlipCard> {
  bool _isFlipped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isFlipped = !_isFlipped;
        });
      },
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        transitionBuilder: (Widget child, Animation<double> animation) {
          final rotate = Tween(begin: pi, end: 0.0).animate(animation);
          return AnimatedBuilder(
            animation: rotate,
            child: child,
            builder: (BuildContext context, Widget? child) {
              final isUnder = ValueKey(_isFlipped) != child?.key;
              final value = isUnder ? min(rotate.value, pi / 2) : rotate.value;
              return Transform(
                transform: Matrix4.rotationY(value),
                alignment: Alignment.center,
                child: child,
              );
            },
          );
        },
        child: _isFlipped
            ? CardContent(
                key: const ValueKey(true),
                title: widget.backTitle,
                subtitle: widget.backSubtitle,
                color: const Color(0xff364F6B),
              )
            : CardContent(
                key: const ValueKey(false),
                title: widget.frontTitle,
                subtitle: widget.frontSubtitle,
                color: const Color(0xffFC5185),
              ),
      ),
    );
  }
}

class CardContent extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color color;

  const CardContent({
    super.key,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: Text(
              title,
              style: const TextStyle(color: AppColors.white, fontSize: 20),
            ),
            subtitle: Text(
              subtitle,
              style: const TextStyle(color: AppColors.white, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
