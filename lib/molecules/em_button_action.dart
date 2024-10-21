import 'package:etmine_design_appeco/atoms/em_text.dart';
import 'package:etmine_design_appeco/fundation/em_colors.dart';
import 'package:flutter/material.dart';

class EtMineButtonAction extends StatelessWidget {
  final String textButton;
  final Color colorBackground;
  final Color colorText;
  const EtMineButtonAction(
      {super.key,
      required this.textButton,
      this.colorBackground = textWhite,
      this.colorText = textWhite});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorBackground,
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          SubTitle(
            text: textButton,
            textColor: colorText,
          )
        ],
      ),
    );
  }
}
