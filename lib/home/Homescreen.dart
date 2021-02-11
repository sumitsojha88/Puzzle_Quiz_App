import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/quiz/quiz_screen.dart';
import 'package:websafe_svg/websafe_svg.dart';

class homeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
          WebsafeSvg.asset("assets/icons/bg.svg"),
          SafeArea(
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(flex: 2),
                  Text(
                    "Hole Amigos",
                        style: Theme.of(context).textTheme.headline4.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold
                        ),
                  ),
                  Text("Enter Your Username"),
                  Spacer(),
                  TextField(
                    decoration: InputDecoration(
                       filled: true,
                       fillColor: Color(0xFF1C2341),
                       hintText: "User-Name",
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.all(Radius.circular(12)),
                       )
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>   QuizScreen()));
                    },
                      child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(kDefaultPadding*0.75),
                    decoration: BoxDecoration(
                      gradient: kPrimaryGradient,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Text(
                      "Lets Start",
                      style: Theme.of(context)
                          .textTheme
                          .button
                      .copyWith(color: Colors.black),
                    ),
                  ),
                  ),
                  Spacer(flex: 2),

                ],
              )
          )
          )
        ]
      ),
    );
  }
  
}