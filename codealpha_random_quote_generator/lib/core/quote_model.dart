class QuoteModel {
  String? quote;
  String? author;
 

  QuoteModel({this.quote, this.author,});

  QuoteModel.fromJson(Map<String, dynamic> json) {
    quote = json['quote'];
    author = json['author'];
  }
}