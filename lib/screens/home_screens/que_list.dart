class QuestionModel {
  final String question;
  final List<String> options;
  final int correctAnswerIndex;

  const QuestionModel({
    required this.correctAnswerIndex,
    required this.options,
    required this.question,
  });
}

const List<QuestionModel> hrquestionsList = [
  QuestionModel(
    question: 'Which of the following is the correct abbreviation of HRM',
    correctAnswerIndex: 1,
    options: [
      'A : Human Resource Management',
      'B : Human Resourcefulness Management',
      'C : Human Relation Management',
      'D : Humanistic Relation Management',
    ],
  ),
  QuestionModel(
    question:
        'Which of the following correctly defines the Human Resource Department?',
    correctAnswerIndex: 2,
    options: [
      'A : Functional department',
      'B : Service department',
      'C : Line department9',
      'D : Authority department',
    ],
  ),
  QuestionModel(
    question: 'Human factor can be defined as __________',
    correctAnswerIndex: 2,
    options: [
      'A : concept of human behavior',
      'B : Interrelated Physiological',
      'C : Micro and macro issues',
      'D : None of the above',
    ],
  ),
  QuestionModel(
    question:
        'Finding ways to reduce __________ is a crucial responsibility of management.',
    correctAnswerIndex: 3,
    options: [
      'A : Stress',
      'B : Dissatisfaction',
      'C : Uncertainty',
      'D : None of the above',
    ],
  ),
  QuestionModel(
    question:
        'Which of the following components are reformed to support the strategies of human resource function?',
    correctAnswerIndex: 1,
    options: [
      'A : Control systems',
      'B : Appointment',
      'C : Rewards',
      'D : Job allotment',
    ],
  ),
  QuestionModel(
    question:
        'Which of the following fields requires a skilled HR professional?',
    correctAnswerIndex: 2,
    options: [
      'A : People handling',
      'B : Clarifying',
      'C : Both (a) and (b)',
      'D : None of the above',
    ],
  ),
  QuestionModel(
    question:
        'Which of the following fields requires a skilled HR professional?',
    correctAnswerIndex: 3,
    options: [
      'A : Stress',
      'B : Dissatisfaction',
      'C : Uncertainty',
      'D : None of the above',
    ],
  ),
  QuestionModel(
    question: ' Which of the following is considered as strategic activity?',
    correctAnswerIndex: 2,
    options: [
      'A : Productivity',
      'B : Recruitment',
      'C : Planning',
      'D : All of the above',
    ],
  ),
  QuestionModel(
    question: 'Who laid the foundation of Human Resource Management practices?',
    correctAnswerIndex: 3,
    options: [
      'A : David C. McClelland',
      'B : Roethlisberger and Dickinson',
      'C : Peter Drucker and Douglas McGregor',
      'D : Elton Mayo',
    ],
  ),
  QuestionModel(
    question: 'What does a job specification include?',
    correctAnswerIndex: 3,
    options: [
      'A : Personal characteristics',
      'B : Physical characteristics',
      'C : Psychological characteristics',
      'D : All of the above',
    ],
  ),
];
