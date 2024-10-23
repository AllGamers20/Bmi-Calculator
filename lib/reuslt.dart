import 'dart:math';
import 'package:bmiapp/colors.dart';
import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  Result(
      {super.key,
      required this.height,
      required this.weight,
      required this.isman});

  double height;
  double weight;
  bool isman;

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    String result = 'put you weight and hieght and gender and age';
    double bmiRes = widget.weight / pow(widget.height / 100, 2);
    switch (bmiRes) {
      case < 18.5:
        result = "UnderWeight";
        break;
      case >= 18.5 && <= 24.9:
        result = "Optimum Range";

        break;
      case >= 24.9 && <= 29.9:
        result = "Overweight";

        break;
      default:
    }
    return Scaffold(
      backgroundColor: widget.isman ? kMelon : kTefanBlue,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your BMI is : ',
                style: TextStyle(
                  fontSize: 30,
                  color: widget.isman ? kRose : kMintGreen,
                ),
              ),
              Text(
                bmiRes.toStringAsFixed(1),
                style: TextStyle(
                  fontSize: 25,
                  color: widget.isman ? kRose : kMintGreen,
                ),
              ),
              Text(
                result.toString(),
                style: TextStyle(
                  fontSize: 30,
                  color: widget.isman ? kRose : kMintGreen,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.refresh,
                  color: widget.isman ? kRose : kMintGreen,
                  size: 35,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
