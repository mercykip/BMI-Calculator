import 'package:bmi_calculator/application/style.dart';
import 'package:bmi_calculator/application/theme/coloars.dart';
import 'package:bmi_calculator/presentation/pages/bmi_calculator.dart';
import 'package:flutter/material.dart';

// /// Custom button
class CustomButton extends StatelessWidget {
  CustomButton({@required this.icon, this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        elevation: 6.0,
        child: Icon(icon, color: white),
        onPressed: onPressed,
        fillColor: active,
        shape: CircleBorder(),
        constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0));
  }
}

class ButtomButton extends StatelessWidget {
  ButtomButton({this.displayText, this.onTap});
  final String displayText;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      // () {
      //   Navigator.of(context, rootNavigator: true).pushNamed(route);
      // },
      child: Container(
        height: bottomHeight,
        width: double.infinity,
        color: blue4,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 20.0),
        child: Center(
          child: Text(
            displayText,
            style: subTitleTextStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

// custom card design
class CustomeCard extends StatelessWidget {
  CustomeCard(
      {this.onPressed, this.height, this.width, this.cardChild, this.colour});
  final double height;
  final double width;
  final Widget cardChild;
  final Color colour;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed,
      child: Container(
        child: cardChild,
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(5)),
        margin: EdgeInsets.all(15),
      ),
    );
  }
}

Container customContainer(double height, Color color) {
  return Container(
    height: height,
    width: double.infinity,
    decoration:
        BoxDecoration(color: color, borderRadius: BorderRadius.circular(5)),
    margin: EdgeInsets.only(top: 10),
  );
}

Expanded secondaryButton(String displayText, Color color) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextButton(
        onPressed: () {},
        child: Text(
          displayText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
      ),
    ),
  );
}

// Container Card with Icon and text
class IconContainer extends StatelessWidget {
  IconContainer(this.description, this.icon);
  final String description;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: white,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          description,
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
