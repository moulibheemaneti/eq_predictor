class TFQuestions{
  String questionText;
  String answerText;
  String optionTrue;
  String optionFalse;

  TFQuestions({this.questionText, this.answerText, this.optionTrue, this.optionFalse});

  factory TFQuestions.fromJson(Map<String, dynamic> parsedJson){
    return TFQuestions(
      questionText: parsedJson["question"],
      optionTrue: parsedJson["optionTrue"],
      optionFalse: parsedJson["optionFalse"],
      answerText: parsedJson["answer"]
    );
  }
}

class MCQQuestions{
  String questionText;
  String answerText;
  String optionA;
  String optionB;
  String optionC;
  String optionD;

  MCQQuestions({this.questionText, this.answerText, this.optionA, this.optionB, this.optionC, this.optionD});

  factory MCQQuestions.fromJson(Map<String, dynamic> parsedJson){
    return MCQQuestions(
      questionText: parsedJson["question"],
      optionA: parsedJson["optionA"],
      optionB: parsedJson["optionB"],
      optionC: parsedJson["optionC"],
      optionD: parsedJson["optionD"],
      answerText: parsedJson["answer"]
    );
  }
}