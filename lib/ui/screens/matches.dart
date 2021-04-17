import 'package:e_patas/ui/components/dog_avatar.dart';
import 'package:e_patas/ui/components/dog_chat.dart';
import 'package:e_patas/ui/components/icons_list.dart';
import 'package:e_patas/ui/components/matches_title.dart';
import 'package:e_patas/ui/utils/dogemate_icons.dart';
import 'package:flutter/material.dart';

class Matches extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              IconsList(
                index: 1,
              ),
              _buildSearchBar(context),
              MatchesTile(text: 'Nuevos matches'),
              Padding(
                padding: const EdgeInsets.only(
                  left: 13.0,
                ),
                child: Container(
                  height: 109,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      DogAvatar(
                        filePath: 'assets/images/argos_1.jpg',
                        onPressed: () {},
                        name: 'Argos 1',
                      ),
                      DogAvatar(
                        filePath: 'assets/images/argos_2.jpg',
                        onPressed: () {},
                        name: 'Argos 2',
                      ),
                      DogAvatar(
                        filePath: 'assets/images/argos_3.jpg',
                        onPressed: () {},
                        name: 'Argos 3',
                      ),
                      DogAvatar(
                        filePath: 'assets/images/argos_1.jpg',
                        onPressed: () {},
                        name: 'Argos 4',
                      ),
                    ],
                  ),
                ),
              ),
              MatchesTile(text: 'Mensajes'),
              DogChat(
                filePath: 'assets/images/argos_1.jpg',
                name: 'Argos 1',
                message: 'Buenos días',
                isSent: true,
                isRead: true,
                onPressed: () {},
              ),
              DogChat(
                filePath: 'assets/images/argos_2.jpg',
                name: 'Argos 2',
                message: 'Quedamos',
                isSent: false,
                isRead: true,
                onPressed: () {},
              ),
              DogChat(
                filePath: 'assets/images/argos_1.jpg',
                name: 'Argos 3',
                message: 'Hola',
                isSent: false,
                isRead: false,
                onPressed: () {},
              )
            ],
          ),
        ),
        color: Color(0xFFF4FBF9),
      ),
    );
  }

  Widget _buildSearchBar(context) {
    return Container(
      height: 40.0,
      width: MediaQuery.of(context).size.width * 0.9,
      child: GestureDetector(
        onTap: () {
          print('ga');
        },
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Dogemate.search,
                size: 11.08,
                color: Colors.black.withOpacity(0.4),
              ),
              SizedBox(width: 8.0),
              Text(
                'Buscar 38 matches',
                style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w400,
                    fontSize: 17.0,
                    letterSpacing: .22,
                    color: Color(0xFFBDBDBD)),
              ),
            ],
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.05),
            blurRadius: 1.5,
            spreadRadius: 0.1,
            offset: Offset(
              0.0,
              1.5,
            ),
          )
        ],
      ),
    );
  }
}
