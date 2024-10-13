import 'package:codealpha_random_quote_generator/quote/quote_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/quote_model.dart';
import 'quote_states.dart';

class QuoteCubit extends Cubit<QuoteStates> {
  QuoteCubit() : super(InitialState());

  QuoteRepo quoteRepo = QuoteRepo();
  QuoteModel quoteModel = QuoteModel();

  Future<void> getQuote() async {
    try {
      emit(QuoteUpdate());
      quoteModel = await quoteRepo.getQuote();
      emit(QuoteGenerate());
    } catch (error) {
      emit(QuoteError());
    }
  }
}
