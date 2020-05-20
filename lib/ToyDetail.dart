import 'package:flutter/material.dart';
import 'package:navigationrail/model/toys.dart';
class ToyDetail extends StatefulWidget {
  final Toy toy;

  const ToyDetail({Key key, this.toy}) : super(key: key);
  @override
  _ToyDetailState createState() => _ToyDetailState();
}

class _ToyDetailState extends State<ToyDetail> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.height;
    return Column(
      children: <Widget>[
        Container(
          height: screenHeight,
          color: Color(widget.toy.color),

        )
      ],
    );
  }
}
