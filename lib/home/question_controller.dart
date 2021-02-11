
import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:quiz_app/models/questions.dart';

class QuestionController extends GetxController with SingleGetTickerProviderMixin{
    AnimationController _animationController;
    Animation _animation;
    Animation get animation => this._animation;



    @override
    void onInit()
    {
        _animationController = AnimationController(duration: Duration(seconds: 60),vsync: this);
        _animation = Tween<double>(begin: 0,end: 1).animate(_animationController)
        ..addListener(() {
          update();
        });

        _animationController.forward();

        super.onInit();
    }

}