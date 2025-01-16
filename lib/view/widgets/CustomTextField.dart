import 'package:elite_care/utils/appColors.dart';
import 'package:elite_care/utils/dimentions.dart';
import 'package:elite_care/view/widgets/BigText.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String label;
  String errorText;
  String hint;
  bool obscureText;
  bool onlyNumbers;
  bool validator;
  TextEditingController valueController;

  CustomTextField({
    super.key,
    required this.hint,
    required this.valueController,
    required this.label,
    required this.errorText,
    this.obscureText = false,
    this.onlyNumbers = false,
    required this.validator,
  });

  @override
  Widget build(BuildContext contextor) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Dimentions.hight20, vertical: Dimentions.hight10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BigText(
            text: label,
            color: AppColors.textColor,
            size: Dimentions.font20,
          ),
          SizedBox(
            height: Dimentions.hight10,
          ),
          TextField(
            controller: valueController,
            obscureText: obscureText,
            keyboardType: onlyNumbers ? TextInputType.number : null,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimentions.radius10),
              ),
              hintText: hint,
              hintStyle: TextStyle(color: AppColors.textColor),
              errorText: validator ? errorText : null,
            ),
          ),
        ],
      ),
    );
  }
}
