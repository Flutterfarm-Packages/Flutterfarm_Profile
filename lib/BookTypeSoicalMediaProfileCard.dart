import 'dart:ffi';
import 'dart:ui';
import 'package:flutter/material.dart';

class BookTypeSoicalMediaProfileCard extends StatefulWidget {
  final profileImage;
  final bool enableGradient;
  final Color? containerBackgroundColor;
  final Color? theme;
  final Color gradient1;
  final Color gradient2;
  final Color? profileBackgroundColor;
  final String Name;
  final TextStyle? NameTextStyle;
  final String profession;
  final TextStyle? professionTextStyle;
  final postCount;
  final likeCount;
  final Function followFunction;
  final Function MessageFunction;
  final followerCount;

  const BookTypeSoicalMediaProfileCard(
      {Key? key,
      required this.profileImage,
      this.containerBackgroundColor,
      this.profileBackgroundColor,
      required this.Name,
      this.NameTextStyle,
      required this.profession,
      this.professionTextStyle,
      required this.postCount,
      required this.likeCount,
      required this.followerCount,
      required this.followFunction,
      required this.MessageFunction,
      required this.enableGradient,
      required this.gradient1,
      required this.gradient2,
      this.theme})
      : super(key: key);

  @override
  _BookTypeSoicalMediaProfileCardState createState() =>
      _BookTypeSoicalMediaProfileCardState();
}

class _BookTypeSoicalMediaProfileCardState
    extends State<BookTypeSoicalMediaProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient:
              widget.containerBackgroundColor == null && widget.enableGradient
                  ? LinearGradient(
                      colors: [
                        Color(0xffe3a47a),
                        Color(0xffc25e00),
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      stops: [-1, 1])
                  : LinearGradient(
                      colors: [
                        widget.gradient1,
                        widget.gradient2,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [-10, 10]),
          color: widget.containerBackgroundColor == null &&
                  widget.enableGradient == false
              ? Colors.red
              : widget.containerBackgroundColor),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0x79404040),
                offset: Offset(
                  11.0,
                  3.0,
                ),
                blurRadius: 50.0,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(3),
                    topLeft: Radius.circular(3),
                  ),
                  color: widget.profileBackgroundColor == null
                      ? Colors.white
                      : widget.profileBackgroundColor,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          width: 85,
                          height: 85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1150),
                              image: DecorationImage(
                                image: widget.profileImage == null
                                    ? NetworkImage(
                                        'https://png.pngtree.com/png-clipart/20190924/original/pngtree-business-user-profile-vector-png-image_4830519.jpg',
                                      )
                                    : widget.profileImage,
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        '${widget.Name}',
                        style: widget.NameTextStyle == null
                            ? TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xab532b05),
                              )
                            : widget.NameTextStyle,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${widget.profession}',
                        style: widget.professionTextStyle == null
                            ? TextStyle(
                                fontSize: 14,
                                color: Color(0xd2532b05),
                              )
                            : widget.professionTextStyle,
                      ),
                      SizedBox(
                        height: 28,
                      ),
                      InkWell(
                        onTap: () {
                          widget.followFunction;
                        },
                        child: Container(
                          width: 100,
                          height: 30,
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: widget.gradient2, width: 0.8),
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                              child: Text(
                            ' Follow  ',
                            style: TextStyle(color: widget.theme),
                          )),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          widget.MessageFunction;
                        },
                        child: Container(
                          width: 100,
                          height: 30,
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: widget.gradient2, width: 0.8),
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                              child: Text(
                            'Message',
                            style: TextStyle(color: widget.theme),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 98,
                    width: MediaQuery.of(context).size.width * 0.32,
                    decoration: BoxDecoration(
                        color: Color(0xfff5e8df),
                        border: Border(
                            bottom: BorderSide(
                                color: Color(0xffc25e00), width: 0.1))),
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${widget.postCount}',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: widget.theme,
                          ),
                        ),
                        Text(
                          'Posts',
                          style: TextStyle(
                            fontSize: 12,
                            color: widget.theme,
                          ),
                        ),
                      ],
                    )),
                  ),
                  Container(
                    height: 98,
                    width: MediaQuery.of(context).size.width * 0.32,
                    decoration: BoxDecoration(
                        color: Color(0xfff5e8df),
                        border: Border(
                            bottom: BorderSide(
                                color: Color(0xffc25e00), width: 0.1))),
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${widget.likeCount}',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: widget.theme,
                          ),
                        ),
                        Text(
                          'Likes',
                          style: TextStyle(
                            fontSize: 12,
                            color: widget.theme,
                          ),
                        ),
                      ],
                    )),
                  ),
                  Container(
                    height: 98,
                    width: MediaQuery.of(context).size.width * 0.32,
                    decoration: BoxDecoration(
                      color: Color(0xfff5e8df),
                    ),
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${widget.followerCount}',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: widget.theme,
                          ),
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(
                            fontSize: 12,
                            color: widget.theme,
                          ),
                        ),
                      ],
                    )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
