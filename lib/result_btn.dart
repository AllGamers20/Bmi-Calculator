import 'package:bmiapp/colors.dart';
import 'package:bmiapp/home_page.dart';
import 'package:bmiapp/reuslt.dart';
import 'package:flutter/material.dart';

class ResultBtn extends StatelessWidget {
  const ResultBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton.icon(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(kTefanBlue),
              iconColor: const WidgetStatePropertyAll(Colors.white),
            ),
            label: const Text(
              'Give Result',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Result(
                      height: height.toDouble(),
                      weight: weight,
                      isman: isMan,
                    ),
                  ));
            },
            icon: const Icon(Icons.calculate),
          ),
        ),
      ],
    );
  }
}
