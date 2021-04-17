import 'package:e_patas/ui/components/profile_card.dart';
import 'package:e_patas/ui/components/round_icon_button.dart';
import 'package:e_patas/ui/utils/color_theme.dart';
import 'package:e_patas/ui/utils/dogemate_icons.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:e_patas/models/profile.dart';
import 'package:e_patas/ui/components/icons_list.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Profile profile = new Profile(
    bio: 'Argos es un fiel compañero.',
    age: 3,
    distance: 15,
    breed: 'Naruto',
    owner: 'Marcelino Peralta',
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
                height: MediaQuery.of(context).size.height * 0.69,
                child: TinderSwapCard(
                  swipeUp: false,
                  swipeDown: false,
                  orientation: AmassOrientation.BOTTOM,
                  totalNum: 1,
                  stackNum: 3,
                  swipeEdge: 4.0,
                  maxWidth: MediaQuery.of(context).size.width,
                  maxHeight: MediaQuery.of(context).size.height * 0.9,
                  minWidth: MediaQuery.of(context).size.width * 0.8,
                  minHeight: MediaQuery.of(context).size.width * 0.8,
                  cardBuilder: (context, index) => ProfileCard(
                    key: key,
                    profile: profile,
                    isProfile: false,
                  ),
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
                    /// CardSwipeOrinentation.LEFT | CardSwipeOrinentation.RECOVER | CardSwipeOrinentation.RIGHT
                    print(orientation);
                    print(index);
                  },
                ),
              ),
            ),
          ],
        ),
        color: Color(0xFFF4FBF9),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFFF4FBF9),
        elevation: 0.0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RoundIconButton.small(
                icon: Dogemate.rewind,
                iconColor: Color(0xFFF8C30A),
                iconSize: 25.0,
                onPressed: () {},
              ),
              RoundIconButton.large(
                icon: Dogemate.nein,
                iconColor: Color(0xFFF55549),
                iconSize: 25.0,
                onPressed: () {},
              ),
              RoundIconButton.large(
                icon: Dogemate.love,
                iconColor: primaryColor,
                iconSize: 30.0,
                onPressed: () {},
              ),
              RoundIconButton.small(
                icon: Dogemate.info,
                iconColor: Color(0xFF0E251E),
                iconSize: 25.0,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
