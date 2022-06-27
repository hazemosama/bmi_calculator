import 'package:bmi_calculator/modules/bmi/bmi_screen.dart';
import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  final int result;
  final int age;
  final bool isMale;

  BMIResultScreen({required this.result,
    required this.age,
    required this.isMale
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: ()
          {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BmiScreen()
              ),
            );
          },
          icon: Icon(
            Icons.keyboard_arrow_left,
          ),
        ),
        title: Text(
          'BMI Result',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Text(
              'Gender: ${isMale? 'Male' : 'Female' }',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Result: $result',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Age: $age',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
