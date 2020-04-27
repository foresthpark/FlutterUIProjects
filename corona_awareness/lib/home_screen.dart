import 'package:coronaawareness/detail_screen.dart';
import 'package:coronaawareness/widgets/cell_title.dart';
import 'package:coronaawareness/widgets/app_header.dart';
import 'package:coronaawareness/widgets/infected_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'constant.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            AppHeader(
              image: "assets/icons/Drcorona.svg",
              textTop: "Stay home",
              textBottom: "Save Lives",
              targetScreen: DetailScreen(),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: Color(0xFFE5E5E5),
                ),
              ),
              child: Row(
                children: <Widget>[
                  SvgPicture.asset("assets/icons/maps-and-flags.svg"),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: DropdownButton(
                      isExpanded: true,
                      underline: SizedBox(),
                      icon: SvgPicture.asset("assets/icons/dropdown.svg"),
                      value: "Canada",
                      items: ["Canada", "South Korea", "USA"]
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (value) {
                        print(value);
                      },
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  CellTitle(
                    mainTitle: "Case Updates",
                    subTitle: "Last update: April 32nd",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(4, 4),
                              blurRadius: 5,
                              color: Colors.black45),
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InfectedCounter(
                          infectedCount: 4200,
                          cellColor: kInfectedColor,
                          title: "Infected",
                        ),
                        InfectedCounter(
                          infectedCount: 99,
                          cellColor: kDeathColor,
                          title: "Deaths",
                        ),
                        InfectedCounter(
                          infectedCount: 1200,
                          cellColor: kRecovercolor,
                          title: "Recovered",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CellTitle(
                    mainTitle: "Spread of Virus",
                    subTitle: "Last update: April 32nd",
                  ),
                  Container(
                    height: 178,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(4, 4),
                            blurRadius: 5,
                            color: Colors.black45),
                      ],
                    ),
                    child: Image.asset("assets/images/map.png"),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
