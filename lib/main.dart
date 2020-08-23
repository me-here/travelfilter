import 'package:flutter/material.dart';
import 'HorizontalCards.dart';
import 'TravelPlan.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Travel Filter Design',
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HorizontalCards(
              multiList: TravelPlan.interests,
              title: 'Your interests',
            ),
            SizedBox(height: 40),
            HorizontalCards(
              multiList: TravelPlan.transports,
              title: 'Transport Type',
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Align(
            child: Icon(
              Icons.check,
              color: Colors.grey.shade800,
            ),
          ),
          backgroundColor: Colors.white,
          onPressed: () => print('pressed'),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
