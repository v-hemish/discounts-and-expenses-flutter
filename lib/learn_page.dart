import 'package:flutter/material.dart';
import 'introduction_page.dart';
import 'type_of_discounts_page.dart';
import 'calculating_discounts_page.dart';
import 'applying_discounts.dart';

class LearnPage extends StatefulWidget {
  const LearnPage({Key? key}) : super(key: key);

  @override
  _LearnPageState createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {
  bool isEnglish = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 50, 80), // Dark background color
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white), // Set back button color to white
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 20), // Space between top and lessons text
                      const Text(
                        'Lessons',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40, // Increased font size
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20), // Space between lessons text and tiles
                      _buildNavigateTile(context, isEnglish ? 'Introduction' : 'Introducción', Colors.orangeAccent, IntroductionPage(isEnglish: isEnglish)),
                      _buildNavigateTile(context, isEnglish ? 'Types of Discounts' : 'Tipos de Descuentos', Colors.orangeAccent, TypesOfDiscountsPage(isEnglish: isEnglish)),
                      _buildNavigateTile(context, isEnglish ? 'Calculating Discounts' : 'Calcular Descuentos', Colors.orangeAccent, CalculatingDiscountsPage(isEnglish: isEnglish)),
                      _buildNavigateTile(context, isEnglish ? 'Applying Discounts' : 'Aplicar Descuentos', Colors.orangeAccent, ApplyingDiscountsPage(isEnglish: isEnglish)),
                    ],
                  ),
                ),
              ),
              _buildLanguageSwitchTile(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLanguageSwitchTile(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10), // Add margin between tiles
      child: InkWell(
        onTap: () {
          setState(() {
            isEnglish = !isEnglish;
          });
        },
        child: Container(
          height: 50,
          width: 200, // Fixed width for the switch button
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Center(
            child: Text(
              isEnglish ? 'Español' : 'English',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24, // Increased font size
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 3.0,
                    color: Colors.black,
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavigateTile(BuildContext context, String label, Color color, Widget page) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10), // Add margin between tiles
      child: FractionallySizedBox(
        widthFactor: 0.75, // Reduce width by 25%
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page),
            );
          },
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(80), // Curved borders
              border: Border.all(color: Colors.black, width: 6), // Added border
            ),
            child: Center(
              child: Text(
                label,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 34, // Increased font size
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: LearnPage(),
  ));
}
