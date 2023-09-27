class QuotesModel{
  String? quotes,author,category;

  QuotesModel({this.quotes,this.author,this.category});

  factory QuotesModel.fromMap(Map m1){
    QuotesModel q1= QuotesModel(
      author: m1['author'],category: m1['category'],quotes: m1['quotes']);
    return q1;
  }
}