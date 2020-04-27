import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onlinecoursesflutter/constants.dart';
import 'package:onlinecoursesflutter/course_detail_page.dart';
import 'package:onlinecoursesflutter/model/category.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 50, right: 20),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CourseDetailPage(),
                        ),
                      );
                    },
                    child: SvgPicture.asset(
                      "assets/icons/menu.svg",
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/forest.png"),
                    radius: 25,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Hey, Forest,",
                style: kHeadingextStyle,
              ),
              Text(
                "Find something you want to learn",
                style: kSubheadingextStyle,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30),
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Center(
                  child: TextField(
                    cursorColor: Colors.black54,
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      border: InputBorder.none,
                      hintText: "Search for a course",
                      hintStyle: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: 18,
                        color: Colors.black54,
                      ),
                      icon: Icon(
                        Icons.search,
                        color: Colors.black54,
                      ),
                    ),
                    enableInteractiveSelection: true,
                    autocorrect: true,
                    style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 18,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Category",
                    style: kTitleTextStyle,
                  ),
                  Text(
                    "See all",
                    style: kSubtitleTextSyule,
                  ),
                ],
              ),
              Expanded(
                child: StaggeredGridView.countBuilder(
                  padding: EdgeInsets.all(20),
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
//                        color: Colors.deepOrangeAccent,
                        image: DecorationImage(
                          image: AssetImage(categories[index].image),
                          fit: BoxFit.fill,
                        ),
                      ),
                      height: index.isEven ? 200 : 240,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            categories[index].name,
                            style: kTitleTextStyle,
                          ),
                          Text(
                            "${categories[index].numOfCourses} Courses",
                            style: TextStyle(
                              color: kTextColor.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
