import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/models/Questions.dart';
import 'package:quiz_app/models/questions.dart';
import 'package:quiz_app/quiz/options.dart';


class QuestionCard extends StatelessWidget{

  const QuestionCard({
    Key key,
    // it means we have to pass this

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
         margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
         padding: EdgeInsets.all(kDefaultPadding),
         decoration: BoxDecoration(
         color: Colors.grey,
             borderRadius: BorderRadius.circular(25),
         ),
      child: Column(
         children: [
           Text(
             "Q1. What your name mr developer",
             style: Theme.of(context).textTheme.headline6.copyWith(color: Colors.white),
          //  sample_data[0]['question'],
           ),

           SizedBox(height: kDefaultPadding/2),
           Option(),
           Option(),
           Option(),
           Option(),

         ],
      ),
    );
  }



}