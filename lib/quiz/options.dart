import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';

class Option extends StatelessWidget {
  const Option({
    Key key,
    this.text,
    this.index,
    this.press,
  }) : super(key: key);
  final String text;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return  Container(
          margin: EdgeInsets.only(top: kDefaultPadding),
           padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
    border: Border.all(color: Colors.white),
    borderRadius: BorderRadius.circular(15),
    ),
        child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
         Text(
           "1. option",
          style: TextStyle(
              color: Colors.white,
              fontSize: 16
          ),
    ),
            Container(
           height: 26,
           width: 26,
            decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(50),
                 border: Border.all(color: Colors.white),
                                     ),
             )
     ],

    ),
      );
  }
}