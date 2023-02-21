import 'package:flutter/material.dart';
import 'package:parentapp/styles/appStyles.dart';
import 'package:parentapp/styles/colors.dart';

class PrimaryButton extends StatelessWidget {
  final String textValue;
  final VoidCallback callback;

  const PrimaryButton(
      {super.key, required this.textValue, required this.callback});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(5.0),
      elevation: 0,
      child: Container(
        decoration: BoxDecoration(
          color: primaryGreen,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: callback,
            borderRadius: BorderRadius.circular(5.0),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  textValue,
                  style: heading6,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
