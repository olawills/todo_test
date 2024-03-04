import 'package:flutter/material.dart';
import 'package:todo_test/ui/shared/pallete.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final void Function()? onPressed;
  final double width;
  final double height;
  final Widget? child;
  final bool enabledBorder;
  final bool multiText;
  final bool loading;
  const CustomButton({
    super.key,
    this.text,
    this.onPressed,
    this.width = 100,
    this.height = 50,
    this.child,
    this.enabledBorder = false,
    this.multiText = false,
    this.loading = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
          side: enabledBorder
              ? const MaterialStatePropertyAll(BorderSide(
                  color: Pallete.iconColor,
                  width: 2,
                ))
              : null,
          backgroundColor: loading
              ? const MaterialStatePropertyAll(Pallete.iconColor)
              : MaterialStatePropertyAll(
                  enabledBorder ? Pallete.bgColor : null),
          fixedSize: MaterialStatePropertyAll(
            Size(width, height),
          )),
      child: multiText
          ? child
          : Text(
              text ?? '',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Pallete.textColor,
                  ),
            ),
    );
  }
}
