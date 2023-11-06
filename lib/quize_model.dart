class QuizeModel {
  String question;
  List<String> option;
  String rightAnswer;
  String givenAnswer;

  QuizeModel({
    required this.question,
    required this.option,
    required this.rightAnswer,
    this.givenAnswer = '',
  });
}

final List<QuizeModel> questionList = [
  QuizeModel(
      question: 'what is the default chart type in Microsoft excel?',
      option: ['pie chart', 'line chart', 'surface chart', 'column chart'],
      rightAnswer: 'column chart',
  ),
  QuizeModel(
      question: 'Which computer virus records every movement you make on the computer?',
      option: ['Malware Android', 'DoS', 'Key Logger', 'Trapper'],
      rightAnswer: 'Key Logger',
  ),
  QuizeModel(
      question: 'Mail merge is a component of which of the following?',
      option: ['MS Excel', 'MS Word', 'Word Press', 'MS Access'],
      rightAnswer: 'MS Word',
  ),
  QuizeModel(
    question: 'Which keys are used to switch between programs in windows?',
    option: ['Ctrl+TAB', 'Alt+TAB', 'Shift+TAB', 'Shift+Enter'],
    rightAnswer: 'Alt+TAB',
  ),
  QuizeModel(
    question: 'What is the mascot of the Linux operating system?',
    option: ['Bear', 'Penguin', 'Lion', 'whale'],
    rightAnswer: 'Penguin',
  ),
  QuizeModel(
    question: 'Laser printer resolution is specified in terms of:',
    option: ['DPI', 'LPM', 'CPM', 'LSI'],
    rightAnswer: 'DPI',
  ),
  QuizeModel(
    question: '3 A nibble is equal to bits.',
    option: ['4', '8', '16', '32'],
    rightAnswer: '4',
  ),

];
