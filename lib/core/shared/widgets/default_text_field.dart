import 'package:ecommerce_app/core/utils/constants/app_colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    this.inputFormatters,
    this.autovalidateMode,
    this.controller,
  });
  final Widget? suffix;
  final String? hint;
  final String? labelText;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool isPassword;
  final bool autofocus;
  final List<TextInputFormatter>? inputFormatters;
  final AutovalidateMode? autovalidateMode;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autovalidateMode: autovalidateMode,
      validator: validator,
      onChanged: onChanged,
      keyboardType: keyboardType,
      cursorColor: AppColors.primaryColor,
      obscureText: isPassword,
      autofocus: autofocus,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        isDense: true,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 18.0, vertical: 13.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        suffixIcon: suffix != null
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: suffix,
              )
            : null,
        suffixIconConstraints:
            suffix != null ? const BoxConstraints(maxHeight: 42) : null,
        hintText: hint,
        hintStyle: Styles.bodyGrey14,
        labelText: labelText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
