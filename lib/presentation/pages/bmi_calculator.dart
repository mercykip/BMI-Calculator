import 'package:bmi_calculator/application/service/bmi_calculator.dart';
import 'package:bmi_calculator/application/style.dart';
import 'package:bmi_calculator/application/theme/coloars.dart';
import 'package:bmi_calculator/application/theme/constants.dart';
import 'package:bmi_calculator/application/theme/strings.dart';
import 'package:bmi_calculator/domain/gender.dart';
import 'package:bmi_calculator/presentation/router/routes.dart';
import 'package:bmi_calculator/presentation/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double bottomHeight = 70;

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primary,
        appBar: AppBar(
          title: Text(
            bmiCalculatorTitle,
            textAlign: TextAlign.center,
          ),
          backgroundColor: primary,
        ),
        body: SafeArea(
            child: Column(children: [
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CustomeCard(
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.Female;
                      });
                    },
                    height: 160,
                    width: 220,
                    cardChild: IconContainer(female, FontAwesomeIcons.venus),
                    colour: selectedGender == Gender.Female ? active : inactive,
                  ),
                ),
                Expanded(
                  child: CustomeCard(
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.Male;
                      });
                    },
                    height: 160,
                    width: 220,
                    cardChild: IconContainer(male, FontAwesomeIcons.mars),
                    colour: selectedGender == Gender.Male ? active : inactive,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: CustomeCard(
            height: 160,
            width: 600,
            colour: inactive,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(height.toString(), style: subTitleTextStyle),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(
                      heightk.toString(),
                      textAlign: TextAlign.center,
                      style: NumberTextStyle,
                    ),
                    Text(
                      cm,
                      textAlign: TextAlign.center,
                      style: normalTextStyle,
                    ),
                  ],
                ),
                Expanded(
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        thumbColor: blue4,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 10.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 20.0)),
                    child: Slider(
                      value: heightk.toDouble(),
                      min: 120.0,
                      max: 200.0,
                      activeColor: blue3,
                      inactiveColor: blue4,
                      onChanged: (double newvalue) {
                        setState(() {
                          heightk = newvalue.round();
                        });
                      },
                    ),
                  ),
                )
              ],
            ),
          )),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: CustomeCard(
                        colour: inactive,
                        height: 160,
                        width: 220,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(weight),
                            Text(weightk.toString(), style: subTitleTextStyle),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomButton(
                                    icon: FontAwesomeIcons.plus,
                                    onPressed: () {
                                      setState(() {
                                        weightk++;
                                      });
                                    }),
                                SizedBox(
                                  width: 10,
                                ),
                                CustomButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      weightk--;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ))),
                Expanded(
                    child: CustomeCard(
                        colour: inactive,
                        height: 160,
                        width: 220,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(age),
                            Text(agek.toString(), style: subTitleTextStyle),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomButton(
                                    icon: FontAwesomeIcons.plus,
                                    onPressed: () {
                                      setState(() {
                                        agek++;
                                      });
                                    }),
                                SizedBox(
                                  width: 10,
                                ),
                                CustomButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      agek--;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ))),
              ],
            ),
          ),
          ButtomButton(
            displayText: result,
            onTap: () {
              BMICalculator(height: heightk, weight: weightk);
              Navigator.of(context, rootNavigator: true)
                  .pushNamed(resultPageRoute);
            },
          )
        ])));
  }
}
