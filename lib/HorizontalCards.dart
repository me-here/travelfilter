import 'package:flutter/material.dart';
import 'TravelPlan.dart';
import 'HorizontalCard.dart';
import 'CircleCard.dart';
import 'ResponseCounter.dart';

class HorizontalCards extends StatefulWidget {
  final List<List<dynamic>> multiList;
  final title;
  HorizontalCards({this.multiList, this.title});

  @override
  _HorizontalCardsState createState() => _HorizontalCardsState();
}

class _HorizontalCardsState extends State<HorizontalCards> {
  int _countSelected = 0;
  void incrementCountSelected(int newCount) {
    setState(() {
      _countSelected += newCount;
    });
  }

  int get _getTotalPossible {
    int total =
        widget.multiList.fold(0, (tot, innerList) => tot += innerList.length);
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ResponseCounter(
          title: this.widget.title,
          numResponses: _countSelected,
          totalPossible: _getTotalPossible,
        ),
        ...List<Widget>.generate(widget.multiList.length, (index) {
          return Column(
            children: [
              Container(
                height: 50,
                margin: EdgeInsets.symmetric(vertical: 8),
                child: ListView.builder(
                  controller: ScrollController(
                    initialScrollOffset:
                        index % 2 == 1 || widget.multiList.length == 1 ? 0 : 50,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) {
                    if (widget.multiList.length == 1) {
                      return CircleCard(
                        TravelPlan.transports[index][i]['icon'],
                        incrementCountSelected,
                      );
                    }
                    return HorizontalCard(
                      TravelPlan.interests[index][i],
                      incrementCountSelected,
                    );
                  },
                  itemCount: index != null
                      ? TravelPlan.interests[index].length
                      : TravelPlan.transports.length,
                ),
              )
            ],
          );
        })
      ],
    );
  }
}
