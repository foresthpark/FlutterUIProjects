import 'package:flutter/material.dart';
import 'package:onlinecoursesflutter/course_tile.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onlinecoursesflutter/constants.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class CourseDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF5F4EF),
          image: DecorationImage(
            image: AssetImage("assets/images/ux_big.png"),
            alignment: Alignment.topRight,
          ),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 50,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          print("Going back");
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset("assets/icons/arrow-left.svg"),
                      ),
                      GestureDetector(
                        onTap: () {
                          print("Show me more stuff");
                        },
                        child:
                            SvgPicture.asset("assets/icons/more-vertical.svg"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ClipPath(
                    clipper: BestSellerClipper(),
                    child: Container(
                      color: kBestSellerColor,
                      padding: EdgeInsets.only(
                        left: 10,
                        top: 5,
                        right: 20,
                        bottom: 5,
                      ),
                      child: Text(
                        "BESTSELLER",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Design Thinking",
                    style: kHeadingextStyle,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: <Widget>[
                      SvgPicture.asset(
                        "assets/icons/person.svg",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "9k",
                      ),
                      SizedBox(
                        width: 20,
                      ),
//                  SmoothStarRating(
//                    color: Colors.amber,
//                    borderColor: Colors.amber,
//                    starCount: 4,
//                    filledIconData: Icons.blur_on,
//                  ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "\$55 ",
                          style: kHeadingextStyle.copyWith(
                            fontSize: 32,
                          ),
                        ),
                        TextSpan(
                          text: "\$80 ",
                          style: TextStyle(
                            color: kTextColor.withOpacity(0.5),
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Course Content",
                              style: kTitleTextStyle,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            CourseTile(
                              number: "01",
                              duration: 5.3,
                              title: "Welcome to the course",
                              isCompleted: true,
                            ),
                            CourseTile(
                              number: "02",
                              duration: 15.7,
                              title: "Design thinking 101",
                              isCompleted: true,
                            ),
                            CourseTile(
                              number: "03",
                              duration: 12.2,
                              title: "Process of design thinking",
                              isCompleted: false,
                            ),
                            CourseTile(
                              number: "04",
                              duration: 8.6,
                              title: "Customer's perspective",
                              isCompleted: false,
                            ),
                            CourseTile(
                              number: "05",
                              duration: 5.3,
                              title: "Systems thinking",
                              isCompleted: false,
                            ),
                            CourseTile(
                              number: "06",
                              duration: 9.1,
                              title: "Systematic design",
                              isCompleted: false,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      left: 0,
                      bottom: 0,
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 4),
                              blurRadius: 40,
                              color: kTextColor.withOpacity(0.1),
                            ),
                          ],
                        ),
                        height: 100,
                        width: double.infinity,
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(14),
                              height: 56,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.pink[50],
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: SvgPicture.asset(
                                "assets/icons/shopping-bag.svg",
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  print("Buy disss");
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.all(14),
                                  height: 56,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.blue[700],
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Text(
                                    "Buy Now",
                                    style: kSubtitleTextSyule.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BestSellerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(size.width - 20, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width - 20, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
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
