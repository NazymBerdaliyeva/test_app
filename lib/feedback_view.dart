import 'package:flutter/material.dart';
import 'package:test_app/components/primary_button.dart';

import 'components/feedback_form.dart';
import 'components/rounded_container.dart';
import 'components/subtitle.dart';
import 'components/title.dart';
import 'components/values/colors.dart';
import 'model/review.dart';

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
    Review(
        fullName: "Ruslan Wes",
        rating: "3.2",
        date: "12 05 2019",
        image: "assets/images/img1.jpeg",
        feedbackText: "Don't support Apple Pay!")
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 750,
      width: MediaQuery.of(context).size.width,
      color: Colors.yellow,
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
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 13),
            height: 464,
            child: ListView.builder(
              padding: EdgeInsets.only(top: 0),
              itemCount: _reviews.length,
              itemBuilder: (_, int index) {
                final review = _reviews[index];
                return FeedbackForm(
                  fullName: review.fullName,
                  rating: review.rating,
                  date: review.date,
                  image: review.image,
                  text: review.feedbackText,
                );
              },
            ),
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
