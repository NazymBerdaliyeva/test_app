import 'package:flutter/material.dart';
import 'package:test_app/resources/components/feedback_form.dart';
import 'package:test_app/resources/components/primary_button.dart';
import 'package:test_app/resources/components/rounded_container.dart';
import 'package:test_app/resources/components/subtitle.dart';
import 'package:test_app/resources/components/title.dart';
import 'package:test_app/resources/values/colors.dart';
import '../model/review.dart';

class FeedbackView extends StatelessWidget {
  final List<Review> _reviews = [
    Review(
      fullName: "John Snow",
      rating: "4.6",
      date: "01 01 2020",
      image: "assets/images/img3.jpeg",
      feedbackText:
          "Отличная ламповая атмосфера с музыкой и сяческами плюшками, "
          "приятные и общительные барберы,"
          " которые сами получают кайф от работы, "
          "что очень важно!) В общем, качество"
          "и сервис на уровне, всем рекомендую!",
    ),
    Review(
        fullName: "Shawn Mendes",
        rating: "5.0",
        date: "10 02 2020",
        image: "assets/images/img2.jpeg",
        feedbackText:
            "Был во второй раз. Это уже о чем то говорит! Алексей блестяще справился с задачей. Спасибо! "),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 750,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleName(
            name: 'Отзывы',
            margin: EdgeInsets.only(top: 39, left: 31),
          ),
          SubtitleText(
            text: 'Всего 69 отзыва',
            fontWeight: FontWeight.w500,
            margin: EdgeInsets.only(top: 5, left: 33),
          ),
          FeedbackForm(
            fullName: _reviews[0].fullName,
            rating: _reviews[0].rating,
            date: _reviews[0].date,
            image: _reviews[0].image,
            text: _reviews[0].feedbackText,
          ),
          FeedbackForm(
            fullName: _reviews[1].fullName,
            rating: _reviews[1].rating,
            date: _reviews[1].date,
            image: _reviews[1].image,
            text: _reviews[1].feedbackText,
          ),
          RoundedContainer(
            color: Colors.white,
            height: 53,
            width: 367,
            margin: EdgeInsets.only(top: 7, left: 23, right: 24),
            child: Center(
              child: Text(
                'ВСЕ ОТЗЫВЫ',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.DarkBrown,
                    fontSize: 18,
                    letterSpacing: 0.02,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Center(
            child: PrimaryButton(
              width: 222,
              height: 52,
              margin: EdgeInsets.only(
                top: 45,
              ),
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
