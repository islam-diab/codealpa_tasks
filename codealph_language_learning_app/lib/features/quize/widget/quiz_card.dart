part of 'quiz_has_data.dart';
class QuizCard extends StatelessWidget {

  final int currentIndex;
  final ItemModel itemModel;
  final TextEditingController controller;
  const QuizCard({super.key, required this.currentIndex, required this.itemModel, required this.controller});

  @override
  Widget build(BuildContext context) {
    return  Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        'Question ${currentIndex + 1}',
                        style: const TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        itemModel.enName,
                        style: const TextStyle(fontSize: 24.0),
                      ),
                      const SizedBox(height: 20.0),
                      CustomTextForm(
                        controller: controller,
                        labelText: 'Your Answer',
                      ),
                    ],
                  ),
                ),
              );
  }
}