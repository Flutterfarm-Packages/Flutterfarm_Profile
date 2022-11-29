import 'package:flutter/material.dart';

class ProfileDoubleCard extends StatelessWidget {
  final DecorationImage profileImage;
  final String Name;
  final TextStyle? NameTextStyle;
  final String profession;
  final TextStyle? professionTextStyle;
  final String about;
  final TextStyle? aboutTextStyle;
  final Color? profileBackground;
  final Color? primaryCardColor;
  final Color? secondaryCardColor;
  final List bottomImages;
  const ProfileDoubleCard(
      {Key? key,
      required this.profileImage,
      required this.Name,
      this.NameTextStyle,
      required this.profession,
      this.professionTextStyle,
      required this.about,
      this.aboutTextStyle,
      this.profileBackground,
      this.primaryCardColor,
      this.secondaryCardColor,
      required this.bottomImages})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width * 0.9,
        child: Stack(
          children: [
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25.0, top: 20),
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xb79c9c9c),
                          offset: Offset(
                            1.0,
                            3.0,
                          ),
                          blurRadius: 15.0,
                        ),
                      ],
                      color: secondaryCardColor == null
                          ? Colors.white
                          : secondaryCardColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (int i = 0; i < 4; i++)
                              Padding(
                                padding: EdgeInsets.only(right: 12),
                                child: bottomImages[i],
                              )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 70,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Center(
                  child: Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xa9656565),
                            offset: Offset(
                              1.0,
                              3.0,
                            ),
                            blurRadius: 15.0,
                          ),
                        ],
                        color: primaryCardColor == null
                            ? Colors.white
                            : primaryCardColor,
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                gradient: profileBackground == null
                                    ? LinearGradient(
                                        colors: [
                                            Color(0xff609ea0),
                                            primaryCardColor == null
                                                ? Colors.white
                                                : primaryCardColor!
                                          ],
                                        stops: [
                                            0.5,
                                            0.5
                                          ],
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topRight)
                                    : LinearGradient(
                                        colors: [
                                            profileBackground!,
                                            Colors.white
                                          ],
                                        stops: [
                                            0.5,
                                            0.5
                                          ],
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topRight),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(5),
                                    topRight: Radius.circular(5)),
                              ),
                            ),
                            Positioned(
                                top: 10,
                                left: 10,
                                child: Container(
                                  padding: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Container(
                                    width: 90,
                                    height: 90,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(1150),
                                        image: profileImage),
                                  ),
                                )),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(8, 15, 8, 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${Name}',
                                    style: NameTextStyle == null
                                        ? TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                            letterSpacing: 1.2,
                                            color: Color(0xb4000000))
                                        : NameTextStyle,
                                  ),
                                  Container(
                                      width: 185,
                                      child: Text(' ${profession}',
                                          style: professionTextStyle == null
                                              ? TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle: FontStyle.italic,
                                                  color: Color(0xff609ea0))
                                              : professionTextStyle,
                                          overflow: TextOverflow.ellipsis)),
                                ],
                              ),
                              Container(
                                  width: 185,
                                  child: Text(
                                    '${about}',
                                    style: aboutTextStyle,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
