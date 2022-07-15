import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hint,
    this.errorText,
    this.suffixIcon,
    this.prefixIcon,
    this.obscureText = false,
    this.textCapitalization = false,
    this.readOnly = false,
    this.onChanged,
    this.onSubmitted,
    this.onTap,
    this.onEditingComplete,
    this.focusNode,
    this.autoFocus = false,
    this.inputType,
    this.textInputAction,
    this.valueChanged,
  });
  final TextEditingController controller;
  final String hint;
  final String? errorText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool obscureText;
  final bool readOnly;
  final bool textCapitalization;
  final Function? onChanged;
  final Function? onSubmitted;
  final Function? onTap;
  final Function? onEditingComplete;
  final FocusNode? focusNode;
  final bool autoFocus;
  final TextInputType? inputType;
  final TextInputAction? textInputAction;
  final ValueChanged? valueChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      focusNode: focusNode,
      textCapitalization: textCapitalization ? TextCapitalization.words : TextCapitalization.none,
      readOnly: readOnly,
      onChanged: valueChanged,
      autofocus: autoFocus,
      obscureText: obscureText,
      keyboardType: inputType,
      onTap: ()=> onTap,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        errorMaxLines: 2,
        hintText: hint,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        errorText: errorText,
      ),
    );
  }
}
