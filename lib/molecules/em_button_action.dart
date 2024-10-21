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
      this.colorBackground = textWhite,
      this.colorText = textWhite,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: colorBackground,
        height: 50,
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            SubTitle(
              text: textButton,
              textColor: colorText,
            )
          ],
        ),
      ),
    );
  }
}
