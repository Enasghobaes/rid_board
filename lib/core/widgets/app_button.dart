import 'package:flutter/material.dart';
import 'package:rid_board/core/resources/color.dart';

// var app_button = InkWell(
//   onTap: () {

//   },
//   child: Container(
//     decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
//     color: primary),
//     child: Text(""),
//   ),
// );

class AppButton extends StatelessWidget {
  final String text;
  final bool hasTrailing;
  final Function() onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.hasTrailing,
    this.backgroundColor,
    this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        foregroundColor: foregroundColor ?? const Color(0xffFFF9FF),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
          Radius.circular(
            19,
          ),
        )),
        minimumSize: const Size(353, 67),
        backgroundColor: backgroundColor ?? primary,
      ),
      onPressed: onPressed,
      child: hasTrailing
          ? Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(text),
                Container(
                  width: 43,
                  height: 22,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    color: primary,
                  ),
                  child: const Center(
                    child: Text(
                      "",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        // fontFamily:AutofillHints.email,
                        // fontFamily:AutofillHints.addressCity,
                        // fontFamily:AutofillHints.password,
                      ),
                    ),
                  ),
                )
              ],
            )
          : Text(text),
    );
  }
}
