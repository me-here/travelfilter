import 'package:flutter/material.dart';

import 'models/Interest.dart';

class HorizontalCard extends StatefulWidget {
  final Interest interest;
  final Function increment;
  HorizontalCard(this.interest, this.increment);

  @override
  _HorizontalCardState createState() => _HorizontalCardState();
}

class _HorizontalCardState extends State<HorizontalCard>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;
  bool isSelected = false;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );

    _animation.addListener(() {
      setState(() {});
    });

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void onTap() {
    isSelected = !isSelected;

    print('tapped!');
    widget.increment(isSelected ? 1 : -1);
    _controller.isDismissed ? _controller.forward() : _controller.reverse();
  }

  final _textColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            widget.interest.title,
            style: TextStyle(
              color:
                  _controller.isDismissed ? _textColor.shade800 : Colors.white,
            ),
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: _textColor.shade400,
          ),
          image: DecorationImage(
            image: NetworkImage(widget.interest.imgURL),
            fit: BoxFit.fill,
            alignment: Alignment.center,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(_animation.value),
              BlendMode.dstATop,
            ),
          ),
        ),
      ),
    );
  }
}
