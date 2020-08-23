import 'package:flutter/material.dart';

class ResponseCounter extends StatelessWidget {
  final String title;
  final int numResponses;
  final int totalPossible;

  const ResponseCounter({
    @required this.title,
    @required this.numResponses,
    @required this.totalPossible,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            this.title,
            style: TextStyle(fontSize: 24, color: Colors.grey),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  'Selected',
                  style: TextStyle(color: Colors.grey),
                ),
                margin: EdgeInsets.only(right: 16),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey,
                ),
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                child: Text(
                  '$numResponses/$totalPossible',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
