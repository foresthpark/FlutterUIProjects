import 'package:coronaawareness/constant.dart';
import 'package:coronaawareness/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppHeader extends StatelessWidget {
  final String image;
  final String textTop;
  final String textBottom;
  final Widget targetScreen;

  const AppHeader({
    Key key,
    @required this.image,
    @required this.textTop,
    @required this.textBottom,
    @required this.targetScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        padding: EdgeInsets.only(left: 40, top: 50, right: 20),
        height: 350,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/virus.png"),
          ),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color(0xFF3383CD), Color(0xFF11249F)],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => targetScreen,
                      ),
                    );
                  },
                  child: SvgPicture.asset(
                    "assets/icons/menu.svg",
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Stack(
                  children: <Widget>[
                    SvgPicture.asset(
                      image,
                      width: 230,
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter,
                    ),
                    Positioned(
                      top: 20,
                      left: 150,
                      child: Text(
                        "$textTop,\n$textBottom",
                        style: kHeadingTextStyle.copyWith(color: Colors.white),
                      ),
                    ),
                    Container(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();

    return path;
    throw UnimplementedError();
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
    throw UnimplementedError();
  }
}
