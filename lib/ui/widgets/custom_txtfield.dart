import 'package:flutter/material.dart';
import 'package:todo_test/ui/shared/pallete.dart';

class CustomTextField extends StatelessWidget {
  //

  final String label;

  /// The text to display as a hint inside the text field.
  final String? hintText;

  final TextEditingController? controller;

  //
  final Function()? onTap;

  //

  final ValueChanged<String>? onChanged;

  //
  final String? Function(String?)? validator;

  /// A flag indicating whether the text field is enabled.
  final bool enabled;

  /// The color of the cursor of the text field.
  final Color cursorColor;

  /// The keyboard type of the text field.
  final TextInputType? keyboardType;

  /// The maximum number of lines of the text field.
  final int? maxLines;

  /// The suffix widget of the text field.
  final Widget? suffix;

  /// The prefix widget of the text field.
  final Widget? prefix;

  /// If true the decoration's container is filled with [fillColor].
  final bool filled;

  /// The color to fill the decoration's container with, if [filled] is true.
  final Color? fillColor;

  const CustomTextField({
    super.key,
    required this.label,
    this.hintText,
    this.controller,
    this.onTap,
    this.onChanged,
    this.validator,
    this.enabled = true,
    this.cursorColor = Pallete.textColor,
    this.keyboardType,
    this.maxLines,
    this.suffix,
    this.prefix,
    this.filled = false,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    final decoration = InputDecoration(
      hintText: hintText,
      hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Pallete.greyColor1,
          ),
      prefix: prefix,
      fillColor: filled == true ? Pallete.textFieldColor : null,
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
          label,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 10),
        InkWell(
          onTap: onTap,
          child: IgnorePointer(
            ignoring: onTap != null,
            child: TextFormField(
              controller: controller,
              onChanged: onChanged,
              validator: validator,
              enabled: enabled,
              cursorColor: cursorColor,
              keyboardType: keyboardType,
              decoration: decoration,
            ),
          ),
        ),
      ],
    );
  }
}
