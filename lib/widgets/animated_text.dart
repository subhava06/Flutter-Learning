import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated texts'),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          /*AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText('Subhava Ojha',textStyle: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold,
                ),
                speed: Duration(milliseconds: 500))
              ],
              totalRepeatCount: 5,
            pause : Duration(milliseconds: 200), // duration between two animations
            displayFullTextOnTap: true, // tap to quickly view entire animation
            stopPauseOnTap: true, //tap on it to pause the animation
          ),*/
          /*AnimatedTextKit(
            animatedTexts: [
             RotateAnimatedText('Hello',textStyle: TextStyle(
               fontSize: 30, fontWeight: FontWeight.bold,),
             ),
              RotateAnimatedText('Beautiful',textStyle: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold,),
              ),
              RotateAnimatedText('World',textStyle: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold,),
              ),

            ],
           *//* totalRepeatCount: 4,
            pause : Duration(milliseconds: 200), // duration between two animations
            displayFullTextOnTap: true, // tap to quickly view entire animation
            stopPauseOnTap: true, *//*//tap on it to pause the animation
          ),*/
          AnimatedTextKit(animatedTexts: [
            WavyAnimatedText('Hello World',
              textStyle: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold,)
              ,),
            WavyAnimatedText('Hello World',
              textStyle: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold,)
              ,)

          ]
          )


        ],
        ),
      ),
    );
  }
}
