import 'package:flutter/material.dart';
import 'package:veterinaria/domain/helper/resources.dart';

class InputDecorations {
  static InputDecoration TextFieldDecoration({
    required String hinText,
    required String labelText,
    Widget? suffixIcon,
    IconData? prefixIcon,
  }) {
    return InputDecoration(
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.principal)),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.principal, width: 2)),
        hintText: hinText,
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.grey),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon != null
            ? Icon(prefixIcon, color: AppColors.principal)
            : null);
  }
}

// class InputDecorationsPass {
//   static InputDecoration TextFieldDecorationPass({
//     required String hinText,
//     required String labelText,
//     IconData? prefixIcon,
//   }) {
//     bool _obscureText = true;

//     return InputDecoration(
//         enabledBorder: UnderlineInputBorder(
//             borderSide: BorderSide(color: AppColors.principal)),
//         focusedBorder: UnderlineInputBorder(
//             borderSide: BorderSide(color: AppColors.principal, width: 2)),
//         hintText: hinText,
//         labelText: labelText,
//         labelStyle: TextStyle(color: Colors.grey),
//         suffixIcon: GestureDetector(
//             onTap: () {
//               _obscureText = !_obscureText;
//             },
//             child:
//                 Icon(Icons.alternate_email_sharp, color: AppColors.principal)),
//         prefixIcon: prefixIcon != null
//             ? Icon(Icons.alternate_email_sharp, color: AppColors.principal)
//             : null);
//   }
// }
