import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class BorderlessFormTextField extends StatelessWidget {

  const BorderlessFormTextField({
    super.key,
    required this.name,
    this.labelText,
    this.contentPadding,
    this.textInputAction,
    this.inputFormatters,
    this.keyboardType,
    this.initialValue,
    this.fillColor,
    this.borderRadius = 0,
    this.height,
    this.width,
    this.labelFontSize,
    this.validator,
  });

  final String name;
  final String? labelText;
  final EdgeInsetsGeometry? contentPadding;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final String? initialValue;
  final double borderRadius;
  final Color? fillColor;
  final double? height;
  final double? width;
  final double? labelFontSize;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: FormBuilderTextField(
        name: name,
        validator: validator,
        inputFormatters: inputFormatters,
        keyboardType: keyboardType,
        controller: initialValue != null ? TextEditingController(text: initialValue) : null,
        textInputAction: textInputAction,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(
            fontSize: labelFontSize,
          ),
          contentPadding: contentPadding,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide.none,
          ),
          fillColor: fillColor,
          filled: true,
        ),
      ),
    );
  }
}
