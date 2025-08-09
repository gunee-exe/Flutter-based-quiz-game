import 'package:flutter_application_1/models/quiz_question.dart';

const Allquestions = [
  QuizQuestion(
  'At what age did Babar Azam make his ODI debut for Pakistan?',
  [
    '21',
    '19',
    '14',
    '18',
  ],
),

QuizQuestion(
  'Against which team did Babar Azam make his T20I debut?',
  [
    'England',
    'India',
    'Zimbabwe',
    'West Indies',
  ],
),

QuizQuestion(
  'In cricket, how many players are there in one team on the field?',
  [
    '11',
    '10',
    '12',
    '9',
  ],
),

QuizQuestion(
  'What is the maximum number of overs a bowler can bowl in a standard ODI match?',
  [
    '10',
    '8',
    '12',
    '6',
  ],
),

QuizQuestion(
  'Who won the ICC Cricket World Cup in 2019?',
  [
    'England',
    'New Zealand',
    'Australia',
    'India',
  ],
),

QuizQuestion(
  'Which country won the first-ever ICC T20 World Cup in 2007?',
  [
    'India',
    'Pakistan',
    'Australia',
    'West Indies',
  ],
),

QuizQuestion(
  'What does LBW stand for in cricket?',
  [
    'Leg Before Wicket',
    'Left Bat Wide',
    'Leg Beyond Width',
    'Long Ball Wicket',
  ],
),

QuizQuestion(
  'How many runs are awarded if the ball crosses the boundary without touching the ground?',
  [
    '6',
    '4',
    '2',
    '5',
  ],
),
QuizQuestion(
  'Which cricketer is known as the "King of the Cover Drive"?',
  [
    'Babar Azam',
    'Virat Kohli',
    'Joe Root',
    'Kane Williamson',
  ],
),

QuizQuestion(
  'Which country has won the most ICC Cricket World Cups?',
  [
    'Australia',
    'India',
    'West Indies',
    'England',
  ],
),

QuizQuestion(
  'How many legal deliveries are there in an over in cricket?',
  [
    '6',
    '8',
    '5',
    '4',
  ],
),

QuizQuestion(
  'Which country won the 1992 ICC Cricket World Cup?',
  [
    'Pakistan',
    'England',
    'Australia',
    'New Zealand',
  ],
),


QuizQuestion(
  'Who was the first batsman to score a double century in ODI cricket?',
  [
    'Sachin Tendulkar',
    'Rohit Sharma',
    'Chris Gayle',
    'Virender Sehwag',
  ],
),

QuizQuestion(
  'Which format of cricket is played over five days?',
  [
    'Test cricket',
    'ODI cricket',
    'T20 cricket',
    'The Hundred',
  ],
),

QuizQuestion(
  'In cricket scoring, what does a “duck” mean?',
  [
    'Scoring zero runs',
    'Scoring one run',
    'Scoring a century',
    'Scoring a half-century',
  ],
),

QuizQuestion(
  'Which country hosted the 2011 ICC Cricket World Cup final?',
  [
    'India',
    'Sri Lanka',
    'Bangladesh',
    'Australia',
  ],
),

QuizQuestion(
  'Who holds the record for the highest individual score in a Test innings?',
  [
    'Brian Lara',
    'Don Bradman',
    'Virender Sehwag',
    'Steve Smith',
  ],
),

QuizQuestion(
  'What is the term for a bowler taking three wickets in three consecutive balls?',
  [
    'Hat-trick',
    'Five-for',
    'Overthrow',
    'Yorker',
  ],
),

QuizQuestion(
  'Which part of the cricket bat is used to hit the ball?',
  [
    'Blade',
    'Handle',
    'Grip',
    'Toe',
  ],
),
QuizQuestion(
  'In which year did Imran Khan lead Pakistan to win the Cricket World Cup?',
  [
    '1992',
    '1987',
    '1996',
    '1983',
  ],
),

QuizQuestion(
  'What was Imran Khan’s primary role in cricket?',
  [
    'All-rounder',
    'Batsman',
    'Wicketkeeper',
    'Spin bowler',
  ],
),

QuizQuestion(
  'Against which team did Imran Khan play his final international cricket match?',
  [
    'England',
    'India',
    'Australia',
    'New Zealand',
  ],
),
QuizQuestion(
  'Which city was Babar Azam born in?',
  [
    'Lahore',
    'Karachi',
    'Rawalpindi',
    'Islamabad',
  ],
),

QuizQuestion(
  'In which year did Babar Azam make his Test debut?',
  [
    '2016',
    '2015',
    '2017',
    '2018',
  ],
),

QuizQuestion(
  'Babar Azam scored his first ODI century against which team?',
  [
    'West Indies',
    'Zimbabwe',
    'Sri Lanka',
    'New Zealand',
  ],
),
QuizQuestion(
  'What was Imran Khan’s bowling style?',
  [
    'Right-arm fast',
    'Left-arm spin',
    'Right-arm medium',
    'Left-arm fast',
  ],
),

QuizQuestion(
  'Which year did Imran Khan make his Test debut for Pakistan?',
  [
    '1971',
    '1975',
    '1973',
    '1977',
  ],
),

QuizQuestion(
  'Imran Khan captained Pakistan in how many World Cups?',
  [
    '3',
    '2',
    '4',
    '1',
  ],
),
];
var questions =selectRandomQuestions(Allquestions);

List<QuizQuestion> selectRandomQuestions(List<QuizQuestion> Allquestions) {
  final List<QuizQuestion> questions = List.of(Allquestions);
  questions.shuffle();
  return questions.take(8).toList();
}