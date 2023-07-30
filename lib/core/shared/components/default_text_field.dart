import 'package:ecommerce_app/core/constants/app_colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  const DefaultTextField({
    super.key,
    this.suffix,
    this.hint,
    this.labelText,
    this.onChanged,
    this.validator,
    this.keyboardType,
    this.isPassword = false,
    this.autofocus = false,
  });
  final Widget? suffix;
  final String? hint;
  final String? labelText;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool isPassword;
  final bool autofocus;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      onChanged: onChanged,
      keyboardType: keyboardType,
      cursorColor: AppColors.primaryColor,
      obscureText: isPassword,
      autofocus: autofocus,
      decoration: InputDecoration(
        isDense: true,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20.0, vertical: 13.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: suffix,
        ),
        suffixIconConstraints: const BoxConstraints(maxHeight: 42),
        hintText: hint,
        hintStyle: Styles.bodyGrey14,
        labelText: labelText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
