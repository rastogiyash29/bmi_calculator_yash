import 'package:bmi_calculator_yash/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'reusable_card.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}



class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      color: kActiveCardColor,
                      childWidget: IconContent(icon: FontAwesomeIcons.mars,label: 'MALE',),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: kActiveCardColor,
                      childWidget: IconContent(icon: FontAwesomeIcons.venus,label: 'FEMALE',),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: kActiveCardColor,
                childWidget: SizedBox(),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      color: kActiveCardColor,
                      childWidget: SizedBox(width: double.maxFinite,height: double.maxFinite,),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: kActiveCardColor,
                      childWidget: SizedBox(width: double.maxFinite,height: double.maxFinite,),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: kBottomContainerHeight,
              width: double.infinity,
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
            )
          ],
        ),
      ),
    );
  }
}

