import 'package:codealpha_random_quote_generator/core/config.dart';
import 'package:codealpha_random_quote_generator/core/quote_model.dart';
import 'package:dio/dio.dart';

class QuoteRepo {
  final dio = Dio();

  Future<QuoteModel> getQuote() async {
    final dio = Dio();

    final response = await dio.get(
      'https://api.api-ninjas.com/v1/quotes',
      options: Options(
        headers: {'X-Api-Key': Config.apiKey},
      ),
    );
    return QuoteModel.fromJson(response.data[0]);
  }
}
