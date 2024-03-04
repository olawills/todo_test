import 'package:flutter/material.dart';
import 'package:todo_test/ui/shared/pallete.dart';

class CustomPasswordField extends StatefulWidget {
  /// The text to display as a hint inside the text field.
  final String? hintText;

  /// The padding around the content of the text field.
  final EdgeInsetsGeometry contentPadding;

  /// The color of the border of the text field.
  final Color borderColor;

  /// The text controller for managing the text field's input.
  final TextEditingController? controller;

  /// The validator function for input validation.
  final String? Function(String?)? validator;

  /// A flag indicating whether the text field is enabled.
  final bool enabled;

  /// The color of the border of the text field when focused.
  final Color focusedBorderColor;

  /// The color of the cursor of the text field.
  final Color cursorColor;

  /// The text style of the text field.
  final TextStyle? textStyle;

  /// The width of the border of the text field.
  final double borderWidth;

  /// The label widget of the text field.
  final String label;

  final bool obscureText;
  final void Function(String)? onChanged;

  const CustomPasswordField({
    super.key,
    this.hintText,
    this.contentPadding =
        const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
    this.borderColor = Pallete.greyColor,
    this.controller,
    this.validator,
    this.enabled = true,
    this.focusedBorderColor = Pallete.greyColor,
    this.cursorColor = Pallete.textColor,
    this.textStyle,
    this.borderWidth = 1.0,
    required this.label,
    this.obscureText = false,
    this.onChanged,
  });

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool _obscureValue = true;

  @override
  void initState() {
    _obscureValue = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final decoration = InputDecoration(
      hintText: widget.hintText,
      hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Pallete.greyColor1,
          ),
      // fillColor: filled == true ? Pallete.textFieldColor : null,
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Pallete.greyColor1,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Pallete.greyColor1,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      border: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Pallete.greyColor1,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 10),
        TextFormField(
          controller: widget.controller,
          validator: widget.validator,
          enabled: widget.enabled,
          cursorColor: widget.cursorColor,
          onChanged: widget.onChanged,
          decoration: decoration,
          style: widget.textStyle ??
              Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Pallete.textColor),
          obscureText: _obscureValue,
        ),
      ],
    );
  }
}
