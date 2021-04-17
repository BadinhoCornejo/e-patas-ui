import 'package:e_patas/models/profile.dart';
import 'package:e_patas/ui/components/photo_browser.dart';
import 'package:e_patas/ui/utils/dogemate_icons.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatefulWidget {
  final Profile profile;
  final bool isProfile;

  const ProfileCard({Key? key, required this.profile, required this.isProfile})
      : super(key: key);

  @override
  _ProfileCardState createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  Widget _buildBackground() {
    return PhotoBrowser(
      photoAssetPaths: widget.profile.photos,
      visiblePhotoIndex: 0,
    );
  }

  Widget _buildDownButton() {
    return Positioned(
      right: 16.0,
      bottom: -22.5,
      child: Container(
        child: Icon(Dogemate.arrow_down),
        color: Colors.white,
        width: 45.0,
        height: 45.0,
      ),
    );
  }

  Widget _buildProfileSynopsis() {
    return Positioned(
      left: 0.0,
      right: 0.0,
      bottom: 0.0,
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.transparent,
              Colors.black.withOpacity(0.8),
            ])),
        padding: const EdgeInsets.all(24.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    widget.profile.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                    ),
                  ),
                  Text(
                    widget.profile.bio,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10.0), boxShadow: [
        BoxShadow(
          color: const Color(0x11000000),
          blurRadius: 5.0,
          spreadRadius: 2.0,
        )
      ]),
      child: ClipRRect(
        borderRadius:
            !widget.isProfile ? BorderRadius.circular(10.0) : BorderRadius.zero,
        child: Material(
          child: Stack(
            clipBehavior: Clip.none,
            fit: StackFit.loose,
            children: <Widget>[
              _buildBackground(),
              if (!widget.isProfile) _buildProfileSynopsis(),
            ],
          ),
        ),
      ),
    );
  }
}
