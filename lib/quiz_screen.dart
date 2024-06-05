import 'package:flutter/material.dart';
import 'package:flutter_simple_quiz_app/question_model.dart';
import 'dart:math'; // Import dart:math for shuffling

class QuizScreen extends StatefulWidget {
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  // Define the data
  List<Question> questionList = getQuestions();
  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;
  bool? lastAnswerCorrect;
  bool isAnswerSubmitted = false;  // Tracks whether the current answer has been submitted for correctness check

  @override
  void initState() {
    super.initState();
    _shuffleQuestions();
  }

  void _shuffleQuestions() {
    questionList.shuffle(Random());
  }

  void _answerPressed(Answer answer) {
    setState(() {
      selectedAnswer = answer;
      lastAnswerCorrect = answer.isCorrect;
      isAnswerSubmitted = true;
      if (answer.isCorrect) {
        score++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 50, 80),
      appBar: AppBar(
        title: const Text(
          "Discounts and Expenses Quiz",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              // Reset the quiz
              setState(() {
                currentQuestionIndex = 0;
                score = 0;
                selectedAnswer = null;
                lastAnswerCorrect = null;
                isAnswerSubmitted = false;
                _shuffleQuestions(); // Shuffle questions when resetting the quiz
              });
            },
            color: Colors.white,
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _questionWidget(),
            _answerList(),
            _nextButton(),
            const SizedBox(
              height: 9,
            ),
          ],
        ),
      ),
    );
  }

  Widget _questionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Question ${currentQuestionIndex + 1}/${questionList.length}",
              style: const TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            if (isAnswerSubmitted && lastAnswerCorrect != null)
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Icon(
                  lastAnswerCorrect == true ? Icons.check_circle : Icons.cancel,
                  color: lastAnswerCorrect == true ? Colors.lightGreenAccent : Colors.redAccent,
                  size: 30,
                ),
              ),
          ],
        ),
        const SizedBox(height: 20),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500), // Transition duration
          transitionBuilder: (Widget child, Animation<double> animation) {
            return FadeTransition(opacity: animation, child: child);
          },
          child: Container(
            key: ValueKey<int>(currentQuestionIndex), // Important: Update the key to trigger the animation
            alignment: Alignment.center,
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black, width: 2), // Adding a black border
            ),
            child: Text(
              questionList[currentQuestionIndex].questionText,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.black, fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }

  Widget _answerList() {
    var answers = questionList[currentQuestionIndex].answersList;

    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(), // Prevent the GridView itself from scrolling
      crossAxisCount: 2, // Fixed two columns
      crossAxisSpacing: 100, // Space between columns
      mainAxisSpacing: 4, // Space between rows
      childAspectRatio: 2.5, // Control the aspect ratio of each item
      children: List.generate(answers.length, (index) {
        return _answerButton(answers[index]); // Create a button for each answer
      }),
    );
  }

  Widget _answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;
    Color buttonColor;

    if (isAnswerSubmitted) {
      if (answer.isCorrect) {
        buttonColor = Colors.lightGreenAccent;
      } else if (isSelected) {
        buttonColor = Colors.redAccent;
      } else {
        buttonColor = Colors.white;
      }
    } else {
      buttonColor = isSelected ? Colors.orangeAccent : Colors.white;
    }

    return AnimatedOpacity(
      opacity: isAnswerSubmitted ? 0.5 : 1.0,  // Faded when answer is submitted
      duration: const Duration(milliseconds: 300),
      child: Container(
        width: double.infinity,  // Ensures the button stretches to the full available width
        margin: const EdgeInsets.symmetric(vertical: 16),
        height: 48,  // Fixed height for uniformity
        child: ElevatedButton(
          child: Text(
            answer.answerText,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,  // Consistent text color for all buttons
            ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.black),  // Black text color consistently
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                )
            ),
            overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),  // Remove overlay effects
            side: MaterialStateProperty.all(BorderSide(color: Colors.black, width: 8)),  // Black border for all buttons
          ),
          onPressed: isAnswerSubmitted ? null : () => _answerPressed(answer),
        ),
      ),
    );
  }

  Widget _nextButton() {
    bool isLastQuestion = currentQuestionIndex == questionList.length - 1;
    String buttonText = isAnswerSubmitted ? (isLastQuestion ? "Finish" : "Next") : "Reveal";

    void _nextQuestion() {
      setState(() {
        isAnswerSubmitted = false;
        selectedAnswer = null;
        lastAnswerCorrect = null;
        currentQuestionIndex++;
      });
    }

    return Container(
      width: MediaQuery.of(context).size.width * 0.2,  // Adjusted width per previous discussion
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ElevatedButton(
        child: Text(
          buttonText,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          primary: isAnswerSubmitted ? Colors.blueAccent : Colors.orange,
          onPrimary: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 10),
        ),
        onPressed: () {
          if (!isAnswerSubmitted) {
            setState(() {
              isAnswerSubmitted = true;
            });
          } else {
            if (isLastQuestion) {
              showDialog(context: context, builder: (_) => _showScoreDialog());
            } else {
              _nextQuestion();  // Call the method to move to the next question
            }
          }
        },
      ),
    );
  }

  Widget _showScoreDialog() {
    bool isPassed = score >= questionList.length * 0.6;  // Pass if 60%
    double scoreFraction = score / questionList.length;  // Score fraction for the circular progress indicator
    String title = isPassed ? "Congratulations!" : "Try Again!";  // Positive reinforcement

    // Using MediaQuery to obtain screen dimensions
    var screenSize = MediaQuery.of(context).size;

    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),  // Rounded corners for the dialog
      insetPadding: const EdgeInsets.all(10),  // Minimal padding from all sides
      title: Text(
        title,
        style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent, fontSize: 48, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      content: Container(
        width: screenSize.width * 0.6,  // 60% of screen width
        height: screenSize.height * 0.6,  // 60% of screen height, adjust as necessary
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Circular progress indicator
            Expanded(
              child: Center(
                child: SizedBox(
                  height: screenSize.width * 0.2,  // Size relative to screen width
                  width: screenSize.width * 0.2,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      CircularProgressIndicator(
                        value: scoreFraction,
                        backgroundColor: Colors.grey[300],
                        valueColor: AlwaysStoppedAnimation<Color>(isPassed ? Colors.green : Colors.redAccent),
                        strokeWidth: 12,
                      ),
                      Center(
                        child: Text(
                          "${(scoreFraction * 10).toStringAsFixed(1)}/10",
                          style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Restart button
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
                setState(() {
                  currentQuestionIndex = 0;  // Reset to the first question
                  score = 0;                // Reset the score
                  selectedAnswer = null;    // Clear any selected answer
                  lastAnswerCorrect = null; // Clear any correctness indicators
                  isAnswerSubmitted = false; // Reset the submission state to false
                  _shuffleQuestions(); // Shuffle questions when restarting the quiz
                });
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.orangeAccent,
                onPrimary: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: const TextStyle(fontSize: 18),
              ),
              child: const Text('Restart'),
            )
          ],
        ),
      ),
    );
  }
}
