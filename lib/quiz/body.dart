import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/home/progress.dart';
import 'package:quiz_app/home/question_controller.dart';
import 'package:quiz_app/models/questions.dart';
import 'package:quiz_app/quiz/question_card.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // So that we have acccess our controller
 //   QuestionController _questionController = Get.put(QuestionController());
    return Stack(
      children: [
        WebsafeSvg.asset("assets/icons/bg.svg", fit: BoxFit.fill),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: ProgressBar(),
              ),
              SizedBox(height: kDefaultPadding),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              ),
              SizedBox(height: kDefaultPadding),
                Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Text.rich(
                    TextSpan(
                      text:
                      "Question 1",
                      //  "Question ${_questionController.questionNumber.value}",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(color: Colors.blueAccent),
                      children: [
                        TextSpan(
                          text: "/10",
                          style: Theme.of(context).textTheme.headline5.copyWith(color: Colors.blueAccent),

                        )
                      ]
                    ),
                  ),
                ) ,
              Divider(thickness: 1.5),
              SizedBox(height: kDefaultPadding),
              Expanded(
                  child: PageView.builder(
                      itemBuilder: (context,index) => QuestionCard()
                  ),
              )
            ],
          ),
        )
      ],
    );
  }
}