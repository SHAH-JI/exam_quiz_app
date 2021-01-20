class Question {
  String questionText;
  List<String> questionOptions = [];
  int correctOption;
  Question(String question, List<String> options, int option) {
    questionText = question;
    questionOptions = options;
    correctOption = option;
  }
}
