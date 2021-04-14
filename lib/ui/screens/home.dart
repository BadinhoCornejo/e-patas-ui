import 'package:e_patas/ui/components/profile_card.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:e_patas/models/profile.dart';
import 'package:e_patas/ui/components/icons_list.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  late Profile profile = new Profile(
    bio: 'Argos es un fiel compañero.',
    name: 'Argos',
    photos: [
      'assets/images/argos_1.jpg',
      'assets/images/argos_2.jpg',
      'assets/images/argos_3.jpg'
    ],
  );

  @override
  Widget build(BuildContext context) {
    CardController controller; //Use this to trigger swap.

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            IconsList(
              index: 0,
            ),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                child: TinderSwapCard(
                  swipeUp: false,
                  swipeDown: false,
                  orientation: AmassOrientation.BOTTOM,
                  totalNum: profile.photos.length,
                  stackNum: 3,
                  swipeEdge: 4.0,
                  maxWidth: MediaQuery.of(context).size.width * 0.9,
                  maxHeight: MediaQuery.of(context).size.width * 0.9,
                  minWidth: MediaQuery.of(context).size.width * 0.8,
                  minHeight: MediaQuery.of(context).size.width * 0.8,
                  cardBuilder: (context, index) =>
                      ProfileCard(key: key, profile: profile),
                  cardController: controller = CardController(),
                  swipeUpdateCallback:
                      (DragUpdateDetails details, Alignment align) {
                    /// Get swiping card's alignment
                    if (align.x < 0) {
                      //Card is LEFT swiping
                    } else if (align.x > 0) {
                      //Card is RIGHT swiping
                    }
                  },
                  swipeCompleteCallback:
                      (CardSwipeOrientation orientation, int index) {
                    /// Get orientation & index of swiped card!
                  },
                ),
              ),
            ),
          ],
        ),
        color: Color(0xFFF4FBF9),
      ),
    );
  }
}
