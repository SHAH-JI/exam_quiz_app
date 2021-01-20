import 'package:exam_quiz_app/model/question.dart';

class ExamQuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question('The study of Internal Structure is : ',
        ['Morphology', 'Anatomy', 'Histology', 'Physiology'], 1),
    Question('The study of distribution of animals in nature is called : ',
        ['Wild Life', 'Geography', 'Biodiversity', 'Zoogeography'], 3),
    Question('Histology is the study of : ',
        ['Cells', 'Functions', 'Tissues', 'Fossils'], 2),
    Question('The study of parasite is called : ',
        ['Palentology', 'Histology', 'Microbiology', 'Parasitology'], 3),
    Question('The study of functions of different parts of an organism : ',
        ['Morphology', 'Physiology', 'Anatomy', 'Ecology'], 1),
    Question('In human body, amount of phosphorus is : ',
        ['1%', '2%', '18%', '22%'], 0),
    Question('The unit of life is called : ',
        ['Organ', 'Cell', 'Tissue', 'Organelle'], 1),
    Question('In human body amount of oxygen is : ',
        ['50%', '65%', '70%', '40%'], 1),
    Question('Radiotherapy is used in : ',
        ['Cancer', 'AIDS', 'Hepatitis', 'Malaria'], 0),
    Question('The most recent era is : ',
        ['Paleozoic', 'Cenozoic', 'Mesozoic', 'Proterozoic'], 1),
  ];
  bool isFinished() {
    if (_questionNumber < _questionBank.length - 1) {
      return false;
    } else {
      return true;
    }
  }

  void reset() {
    _questionNumber = 0;
  }

  void nextQuestion() {
    if (!isFinished()) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  int getCorrectAnswer() {
    return _questionBank[_questionNumber].correctOption;
  }

  List<String> getQuestionOptions() {
    return _questionBank[_questionNumber].questionOptions;
  }
}
