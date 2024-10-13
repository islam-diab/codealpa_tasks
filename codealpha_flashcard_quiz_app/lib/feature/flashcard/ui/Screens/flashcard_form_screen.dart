import 'package:codealpha_flashcard_quiz_app/feature/flashcard/logic/flashcard_cubit.dart';
import 'package:codealpha_flashcard_quiz_app/feature/flashcard/ui/widgets/custom_button.dart';
import 'package:codealpha_flashcard_quiz_app/feature/flashcard/ui/widgets/custom_text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FlashcardFormScreen extends StatelessWidget {
  const FlashcardFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text('Add Flashcard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: context.read<FlashcardCubit>().formKey,
          child: Column(
            children: [
              CustomTextForm(
                controller: context.read<FlashcardCubit>().questionController,
                labelText: 'Question',
                validator: (value) =>
                    value!.isEmpty ? 'Question cannot be empty' : null,
              ),
              const SizedBox(height: 12.0),
              CustomTextForm(
                controller: context.read<FlashcardCubit>().answerController,
                labelText: 'Answer',
                validator: (value) =>
                    value!.isEmpty ? 'Answer cannot be empty' : null,
              ),
              const Expanded(child: SizedBox.shrink()),
              CustomButton(
                  text: 'Add Flashcard',
                  onPressed: () {
                    if (context
                        .read<FlashcardCubit>()
                        .formKey
                        .currentState!
                        .validate()) {
                      context.read<FlashcardCubit>().addFlashcard();

                      Navigator.pop(context);
                    }
                  }),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
