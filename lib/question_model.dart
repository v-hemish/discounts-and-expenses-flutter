class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];

  // Question 1
  list.add(Question(
      "Original Price: \$50, Discount: 20%, What is the sale price?",
  [
  Answer("\$30", false),
    Answer("\$35", false),
    Answer("\$40", true),
    Answer("\$45", false),
    ],
  ));

  // Question 2
  list.add(Question(
  "Original Price: \$80, Discount: 25%, What is the sale price?",
  [
  Answer("\$50", false),
  Answer("\$55", false),
  Answer("\$60", true),
  Answer("\$65", false),
  ],
  ));

  // Question 3
  list.add(Question(
  "Original Price: \$120, Discount: 15% What is the sale price?",
  [
  Answer("\$90", false),
  Answer("\$95", false),
  Answer("\$100", false),
  Answer("\$102", true),
  ],
  ));

  // Question 4
  list.add(Question(
  "Original Price: \$60, Fixed Discount: \$10 - What is the sale price?",
  [
  Answer("\$40", false),
  Answer("\$45", false),
  Answer("\$50", true),
  Answer("\$55", false),
  ],
  ));

  // Question 5
  list.add(Question(
  "Original Price: \$200, Fixed Discount: \$25 - What is the sale price?",
  [
  Answer("\$160", false),
  Answer("\$150", false),
  Answer("\$170", false),
  Answer("\$175", true),
  ],
  ));

  // Question 6
  list.add(Question(
  "Original Price: \$35, BOGO 50% off, Buy 2 items - What is the total price?",
  [
  Answer("\$35", false),
  Answer("\$52.50", true),
  Answer("\$60", false),
  Answer("\$70", false),
  ],
  ));

  // Question 7
  list.add(Question(
  "Original Price: \$75, Discount: 10% - What is the discount amount?",
  [
  Answer("\$5", false),
  Answer("\$7.50", true),
  Answer("\$10", false),
  Answer("\$12.5", false),
  ],
  ));

  // Question 8
  list.add(Question(
  "Original Price: \$150, Discount: 20% - What is the discount amount?",
  [
  Answer("\$20", false),
  Answer("\$25", false),
  Answer("\$30", true),
  Answer("\$35", false),
  ],
  ));

  // Question 9
  list.add(Question(
  "9. Original Price: \$90, BOGO Free, Buy 2 items - What is the total price?",
  [
  Answer("\$45", false),
  Answer("\$60", false),
  Answer("\$90", true),
  Answer("\$120", false),
  ],
  ));

  // Question 10
  list.add(Question(
  "Original Price: \$50, Discount: 50% - What is the sale price?",
  [
  Answer("\$10", false),
  Answer("\$20", false),
  Answer("\$25", true),
  Answer("\$30", false),

  ],
  ));

  return list;
}