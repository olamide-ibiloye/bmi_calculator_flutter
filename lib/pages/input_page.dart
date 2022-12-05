import 'package:bmi_calculator_flutter/components/bottom_button.dart';
import 'package:bmi_calculator_flutter/components/toggle_button.dart';
import 'package:bmi_calculator_flutter/pages/results.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/icon_content.dart';
import '../components/reusable_card.dart';
import 'package:bmi_calculator_flutter/constants.dart';
import '../components/slider_content.dart';
import '../components/measurements_and_units.dart';
import 'package:bmi_calculator_flutter/components/bottom_reusable_card.dart';
import 'package:bmi_calculator_flutter/calculator_brain.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;
  int weight = 50;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded(
                  child: reusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    cardColor: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: cardChildColumn(
                        cardIcon: FontAwesomeIcons.mars, label: 'MALE'),
                  ),
                ),
                Expanded(
                  child: reusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      cardColor: selectedGender == Gender.female
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: cardChildColumn(
                          cardIcon: FontAwesomeIcons.venus, label: 'FEMALE')),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Row(
              children: [
                Expanded(
                  child: reusableCard(
                    cardColor: kInactiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'HEIGHT',
                          style: kLabelTextStyle,
                        ),
                        measurementAndUnits(height: height, unit: 'cm'),
                        slider(
                            context: context,
                            height: height,
                            onPress: (double newHeight) {
                              setState(() {
                                height = newHeight.toInt();
                              });
                            }),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Row(
              children: [
                bottomCard(
                    variableName: 'WEIGHT',
                    variable: weight,
                    unit: '',
                    toggleButton1: toggleButton(
                        variable: weight,
                        icon: FontAwesomeIcons.minus,
                        onTap: () {
                          setState(() {
                            weight--;
                          });
                        }),
                    toggleButton2: toggleButton(
                        variable: weight,
                        icon: FontAwesomeIcons.plus,
                        onTap: () {
                          setState(() {
                            weight++;
                          });
                        })),
                bottomCard(
                    variableName: 'AGE',
                    variable: age,
                    unit: '',
                    toggleButton1: toggleButton(
                        variable: age,
                        icon: FontAwesomeIcons.minus,
                        onTap: () {
                          setState(() {
                            age--;
                          });
                        }),
                    toggleButton2: toggleButton(
                        variable: age,
                        icon: FontAwesomeIcons.plus,
                        onTap: () {
                          setState(() {
                            age++;
                          });
                        })),
              ],
            ),
          ),
          bottomButton(
            context: context,
            buttonName: 'CALCULATE',
            onTap: () {
              CalculatorBrain calculatorBrain = CalculatorBrain(
                  height: height,
                  weight: weight);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultsPage(
                          bmiValue: calculatorBrain.bmiValue(),
                          bmiResult: calculatorBrain.bmiResult(),
                          bmiInterpretation: calculatorBrain.bmiInterpretation())));
            },
          )
        ],
      ),
    );
  }
}
