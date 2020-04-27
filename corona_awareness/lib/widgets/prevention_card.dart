import 'package:coronaawareness/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PreventionCard extends StatelessWidget {
  final String image;
  final String title;
  final String body;

  const PreventionCard({
    Key key,
    @required this.image,
    @required this.title,
    @required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 156,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: <Widget>[
          Container(
            height: 136,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 8), blurRadius: 20, color: Colors.black26)
              ],
            ),
          ),
          Image.asset("$image"),
          Positioned(
            left: 130,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              height: 136,
              width: MediaQuery.of(context).size.width - 170,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "$title",
                    style: kTitleTextstyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "$body",
                    style: TextStyle(
                      fontSize: 11,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: SvgPicture.asset(
                      "assets/icons/forward.svg",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
