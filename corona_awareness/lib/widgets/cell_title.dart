import 'package:coronaawareness/constant.dart';
import 'package:flutter/material.dart';

class CellTitle extends StatelessWidget {
  final String mainTitle;
  final String subTitle;

  const CellTitle({
    Key key,
    @required this.mainTitle,
    @required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "$mainTitle\n",
                style: kTitleTextstyle,
              ),
              TextSpan(
                text: "$subTitle",
                style: TextStyle(color: kTextLightColor),
              )
            ],
          ),
        ),
        Spacer(),
        Text(
          "See details",
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
