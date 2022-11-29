import 'dart:ui';
import 'package:flutter/material.dart';

class GlossyEffectProfileCard extends StatefulWidget {
  final DecorationImage profileImage;
  final glossyBackgroundImage;
  final String Name;
  final TextStyle? NameTextStyle;
  final String profession;
  final TextStyle? professionTextStyle;
  final List socialMediaImages;

  const GlossyEffectProfileCard(
      {Key? key,
      required this.profileImage,
      this.glossyBackgroundImage,
      required this.Name,
      this.NameTextStyle,
      required this.profession,
      this.professionTextStyle,
      required this.socialMediaImages})
      : super(key: key);

  @override
  _GlossyEffectProfileCardState createState() =>
      _GlossyEffectProfileCardState();
}

class _GlossyEffectProfileCardState extends State<GlossyEffectProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: widget.profileImage,
      ),
      child: Center(
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 8,
              sigmaY: 1,
            ),
            child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.shade200.withOpacity(0.5)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x9f4c4b4b),
                            offset: Offset(
                              1.0,
                              3.0,
                            ),
                            blurRadius: 15.0,
                          ),
                        ],
                      ),
                      child: Container(
                        width: 85,
                        height: 85,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1150),
                            image: DecorationImage(
                                image: widget.glossyBackgroundImage)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text('${widget.Name}',
                          style: widget.NameTextStyle == null
                              ? TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17)
                              : widget.NameTextStyle),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: Text('${widget.profession}',
                          style: widget.professionTextStyle == null
                              ? TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14)
                              : widget.professionTextStyle),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0;
                              i < widget.socialMediaImages.length;
                              i++)
                            widget.socialMediaImages[i]
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
