import 'package:etmine_design_appeco/fundation/em_colors.dart';
import 'package:etmine_design_appeco/tokens/typography.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EtMineText extends StatelessWidget {
  final String? text;
  final Color? colorText;
  final double? fontSize;
  final TextAlign? textAlign;

  const EtMineText(
      {super.key,
      required this.text,
      this.colorText,
      this.fontSize,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(text!,
        style: GoogleFonts.dmSans(
            textStyle: TextStyle(color: colorText, fontSize: fontSize)),
        textAlign: TextAlign.center,
        maxLines: 4);
  }
}

class H1 extends StatelessWidget {
  final String? text;
  const H1({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return EtMineText(
      text: text,
      colorText: h1Color,
      fontSize: h1Size,
      key: Key('${key}h1'),
    );
  }
}

class H2 extends StatelessWidget {
  final String? text;
  const H2({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return EtMineText(
      text: text,
      colorText: h2Color,
      fontSize: h2Size,
      key: key,
    );
  }
}

class SubTitle extends StatelessWidget {
  final String? text;
  const SubTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return EtMineText(
      text: text,
      colorText: subTitleColor,
      fontSize: subTitleSize,
      key: key,
    );
  }
}

class NormalText extends StatelessWidget {
  final String? text;
  const NormalText({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return EtMineText(
      text: text,
      colorText: contentColor,
      fontSize: contentSize,
      key: key,
    );
  }
}

class EtMineRichText extends StatelessWidget {
  final String? text;
  const EtMineRichText({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: text,
            style:
                const TextStyle(fontSize: contentSize, color: contentColor)));
  }
}
