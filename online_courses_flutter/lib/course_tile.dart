import 'package:flutter/material.dart';
import 'package:onlinecoursesflutter/constants.dart';

class CourseTile extends StatelessWidget {
  final String number;
  final double duration;
  final String title;
  final bool isCompleted;

  const CourseTile({
    Key key,
    @required this.number,
    @required this.duration,
    @required this.title,
    @required this.isCompleted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Text(
            "$number",
            style: kHeadingextStyle.copyWith(
              color: kTextColor.withOpacity(0.2),
              fontSize: 32,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$duration mins\n",
                  style: TextStyle(
                    color: kTextColor.withOpacity(0.5),
                    fontSize: 18,
                  ),
                ),
                TextSpan(
                  text: "$title",
                  style: kSubtitleTextSyule.copyWith(
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(left: 20),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kGreenColor.withOpacity(
                isCompleted ? 0.5 : 1.0,
              ),
            ),
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
