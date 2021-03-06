import 'package:book_tracker/constants/constants.dart';
import 'package:book_tracker/models/book.dart';
import 'package:book_tracker/widgets/book_rating.dart';
import 'package:book_tracker/widgets/two_sided_round_button.dart';
import 'package:flutter/material.dart';

class ReadingListCard extends StatelessWidget {
  final String image;
  final String title;
  final String author;
  final double rating;
  final String buttonText;
  final Book book;
  final bool isBookRad;
  final Function pressDetails;
  final Function pressRead;

  const ReadingListCard({
    Key? key,
    required this.image,
    required this.title,
    required this.author,
    this.rating = 4.5,
    required this.buttonText,
    required this.book,
    required this.isBookRad,
    required this.pressDetails,
    required this.pressRead,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 24, bottom: 0),
      width: 202,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              height: 244,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 33,
                    color: kShadowColor,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
              image,
              width: 100,
            ),
          ),
          Positioned(
              top: 34,
              right: 10,
              child: Column(
                children: [
                  IconButton(
                    icon: const Icon(Icons.favorite_border),
                    onPressed: () {},
                  ),
                  BookRating(score: (rating))
                ],
              )),
          Positioned(
              top: 160,
              child: Container(
                height: 86,
                width: 202,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 6, left: 24),
                      child: RichText(
                        maxLines: 2,
                        text: TextSpan(
                            style: const TextStyle(color: kBlackColor),
                            children: [
                              TextSpan(
                                  text: '$title\n',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text: author,
                                  style:
                                      const TextStyle(color: kLightBlackColor)),
                            ]),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Container(
                          width: 100,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          child: const Text('Details'),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(buttonText),
                        )
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
