import 'package:coronaawareness/home_screen.dart';
import 'package:coronaawareness/widgets/app_header.dart';
import 'package:coronaawareness/widgets/prevention_card.dart';
import 'package:coronaawareness/constant.dart';
import 'package:coronaawareness/widgets/symptom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            AppHeader(
              image: "assets/icons/coronadr.svg",
              textTop: "What you need to know",
              textBottom: "about COVID-19",
              targetScreen: HomeScreen(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Symptoms",
                    style: kTitleTextstyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SymptomCard(
                        image: "assets/images/headache.png",
                        title: "Headache",
                        isActive: true,
                      ),
                      SymptomCard(
                        image: "assets/images/fever.png",
                        title: "Fever",
                        isActive: false,
                      ),
                      SymptomCard(
                        image: "assets/images/caugh.png",
                        title: "Caugh",
                        isActive: false,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Prevention methods",
                    style: kTitleTextstyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PreventionCard(
                    image: "assets/images/wear_mask.png",
                    title: "Wear a face mask",
                    body:
                        "Since the start of the corona virus outbreak, some countries have recommended the use of face masks",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PreventionCard(
                    image: "assets/images/wash_hands.png",
                    title: "Wash your hands",
                    body:
                        "It is recommend to wash your hands for at least 20 seconds with soap after activities",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
