import 'package:codealph_language_learning_app/core/models/ItemModel.dart';

class PhrasesList {
  static List<ItemModel> phrases = List.unmodifiable([
    const ItemModel(
      jpName: 'Kimasu ka?',
      enName: 'Are you coming?',
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
    const ItemModel(
      jpName: 'Kōdoku o wasurenaide kudasai',
      enName: 'Dont forget to subscribe',
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    const ItemModel(
      jpName: 'Go kibun wa ikagadesu ka?',
      enName: 'How are you feeling?',
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    const ItemModel(
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'I love Anime',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    const ItemModel(
      jpName: 'Watashi wa puroguramingu ga \ndaisukidesu',
      enName: 'I love programming',
      sound: 'sounds/phrases/i_love_programming.wav',
    ),
    const ItemModel(
      jpName: 'Puroguramingu wa kantan',
      enName: 'Programming is easy',
      sound: 'sounds/phrases/programming_is_easy.wav',
    ),
    const ItemModel(
      jpName: 'Anata no namae wa nanidesu ka?',
      enName: 'What is your name?',
      sound: 'sounds/phrases/what_is_your_name.wav',
    ),
    const ItemModel(
      jpName: 'Doko ni iku no?',
      enName: 'Where are you going?',
      sound: 'sounds/phrases/where_are_you_going.wav',
    ),
    const ItemModel(
      jpName: 'Hai, ikimasu',
      enName: 'Yes I am coming',
      sound: 'sounds/phrases/yes_im_coming.wav',
    ),
  ]);
}
