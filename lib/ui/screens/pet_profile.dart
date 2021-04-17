import 'package:e_patas/models/profile.dart';
import 'package:e_patas/ui/components/profile_card.dart';
import 'package:e_patas/ui/components/round_icon_button.dart';
import 'package:e_patas/ui/components/small_icon_text.dart';
import 'package:e_patas/ui/utils/dogemate_icons.dart';
import 'package:e_patas/ui/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

class PetProfile extends StatelessWidget {
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

  Widget _buildBottomBar(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 30.0,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.transparent,
                blurRadius: 1.5,
              )
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
          ),
        ),
        Container(
          height: 70.0,
          width: MediaQuery.of(context).size.width,
          color: Colors.transparent,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    CardController controller; //Use this to trigger swap.

    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
              ),
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.69,
                  width: MediaQuery.of(context).size.width,
                  child: ProfileCard(
                    key: key,
                    profile: profile,
                    isProfile: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15.0,
                  left: 15.0,
                ),
                child: Row(
                  children: [
                    Text(
                      'Argos',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 34.0,
                        letterSpacing: 0.41,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF0E251E),
                      ),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      '2 años',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 30.0,
                        letterSpacing: 0.41,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFF0E251E),
                      ),
                    ),
                  ],
                ),
              ),
              SmallIconText(
                icon: Dogemate.user,
                text: 'Marcelino Peralta',
              ),
              SmallIconText(
                icon: Dogemate.dog,
                text: 'Naruto',
              ),
              SmallIconText(
                icon: Dogemate.location_current,
                text: 'Trujillo, Perú',
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Mi perro Argos, es pequeño como un cachorro, tiene el pelo suave como la seda y sus ojos son brillantes como dos luceros. Cuando me mira con sus luceros cuando estoy comiendo, ya se lo que quiere, mi comida, que le parece tan deliciosa como las golosinas. Él es tan mimoso como un peluche y también como un diablo, él se deja tocar eso sí, con mucho cuidado.',
                  style: iOSCallout(Colors.black),
                ),
              ),
            ],
          ),
        ),
        color: Color(0xFFF4FBF9),
      ),
      bottomNavigationBar: Stack(
        children: [
          _buildBottomBar(context),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
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
            ],
          ),
        ],
      ),
    );
  }
}
