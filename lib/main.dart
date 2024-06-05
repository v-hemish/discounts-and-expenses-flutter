import 'package:flutter/material.dart';
import 'package:flutter_simple_quiz_app/quiz_screen.dart';  // Ensure QuizScreen is correctly imported
import 'learn_page.dart'; // Import LearnPage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Discounts and Expenses',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/demo.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 2,
                  child: Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "Discounts and ",
                            style: TextStyle(
                              fontSize: 100,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                  offset: Offset(2, 2),
                                  blurRadius: 3.0,
                                  color: Colors.black,
                                ),
                                Shadow(
                                  offset: Offset(-2, -2),
                                  blurRadius: 3.0,
                                  color: Colors.black,
                                ),
                                Shadow(
                                  offset: Offset(2, -2),
                                  blurRadius: 3.0,
                                  color: Colors.black,
                                ),
                                Shadow(
                                  offset: Offset(-2, 2),
                                  blurRadius: 3.0,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                          TextSpan(
                            text: "Expenses",
                            style: TextStyle(
                              fontSize: 100,
                              fontWeight: FontWeight.bold,
                              color: Colors.orangeAccent,
                              shadows: [
                                Shadow(
                                  offset: Offset(2, 2),
                                  blurRadius: 3.0,
                                  color: Colors.black,
                                ),
                                Shadow(
                                  offset: Offset(-2, -2),
                                  blurRadius: 3.0,
                                  color: Colors.black,
                                ),
                                Shadow(
                                  offset: Offset(2, -2),
                                  blurRadius: 3.0,
                                  color: Colors.black,
                                ),
                                Shadow(
                                  offset: Offset(-2, 2),
                                  blurRadius: 3.0,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildButton(context, "Learn", Colors.orangeAccent, Colors.white, () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LearnPage()),
                        );
                      }),
                      _buildButton(context, "Play", Colors.white, Colors.orangeAccent, () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => QuizScreen()),
                        );
                      }),
                    ],
                  ),
                ),
                const SizedBox(height: 100),  // Additional space at the bottom if needed
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(BuildContext context, String label, Color bgColor, Color textColor, VoidCallback onPressed) {
    return Expanded(  // Use Expanded to evenly distribute space
      child: Container(
        height: 125,  // Fixed height for the button
        margin: const EdgeInsets.symmetric(horizontal: 10),  // Margin between buttons
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            primary: bgColor,
            onPrimary: textColor,
            padding: const EdgeInsets.symmetric(vertical: 15),
            textStyle: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            side: BorderSide(color: textColor, width: 10),  // Add border to the button
          ),
          child: Text(label),
        ),
      ),
    );
  }
}
