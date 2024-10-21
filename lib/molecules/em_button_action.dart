import 'package:etmine_design_appeco/atoms/em_text.dart';
import 'package:etmine_design_appeco/fundation/em_colors.dart';
import 'package:flutter/material.dart';

class EtMineButtonAction extends StatelessWidget {
  final String textButton;
  final Color colorBackground;
  final Color colorText;
  final Function() onTap;

  const EtMineButtonAction(
      {super.key,
      required this.textButton,
      this.colorBackground = buttonColor,
      this.colorText = textWhite,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: colorBackground,
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NormalText(
              text: textButton,
              colorText: colorText,
            )
          ],
        ),
      ),
    );
  }
}
