class TFQuestions{
  String questionText;
  bool isCorrect;

  TFQuestions(this.questionText,this.isCorrect);
}

class MCQQuestions{
  String questionText;
  String correctOption;
  List<String> optionsList;

  MCQQuestions(this.questionText, this.correctOption, this.optionsList);
}