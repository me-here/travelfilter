import 'package:flutter/material.dart';

class CircleCard extends StatefulWidget {
  final IconData icon;
  final Function increment;
  CircleCard(this.icon, this.increment);

  @override
  _CircleCardState createState() => _CircleCardState();
}

class _CircleCardState extends State<CircleCard>
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

  final double _size = 45;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isSelected = !isSelected;
        widget.increment(isSelected ? 1 : -1);
        _controller.isDismissed ? _controller.forward() : _controller.reverse();
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 4),
        height: _size,
        width: _size,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: _size,
                width: _size * _controller.value,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Icon(
                widget.icon,
                size: 24 + _animation.value * 8,
                color: _controller.isDismissed ? Colors.black : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
