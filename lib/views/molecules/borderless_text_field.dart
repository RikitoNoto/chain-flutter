import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class BorderlessTextField extends StatefulWidget {
  const BorderlessTextField({
    super.key,
    this.labelText,
    this.contentPadding,
    this.textInputAction,
    this.onChanged,
    this.inputFormatters,
    this.keyboardType,
    this.initialValue,
    this.fillColor,
    this.borderRadius = 0,
    this.height,
    this.width,
    this.labelFontSize,
  });

  final String? labelText;
  final EdgeInsetsGeometry? contentPadding;
  final TextInputAction? textInputAction;
  final Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final String? initialValue;
  final double borderRadius;
  final Color? fillColor;
  final double? height;
  final double? width;
  final double? labelFontSize;

  @override
  State<BorderlessTextField> createState() => _BorderlessTextField();
}

class _BorderlessTextField extends State<BorderlessTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: TextField(
        onChanged: widget.onChanged,
        inputFormatters: widget.inputFormatters,
        keyboardType: widget.keyboardType,
        controller: widget.initialValue != null ? TextEditingController(text: widget.initialValue) : null,
        textInputAction: widget.textInputAction,
        decoration: InputDecoration(
          labelText: widget.labelText,
          labelStyle: TextStyle(
            fontSize: widget.labelFontSize,
          ),
          contentPadding: widget.contentPadding,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: BorderSide.none,
          ),
          fillColor: widget.fillColor,
          filled: true,
        ),
      ),
    );
  }
}
