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
        textAlign: textAlign,
        maxLines: 4);
  }
}

class H1 extends StatelessWidget {
  final String? text;
  final TextAlign? textAlign;
  const H1({super.key, required this.text, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return EtMineText(
      text: text,
      textAlign: textAlign,
      colorText: h1Color,
      fontSize: h1Size,
      key: Key('${key}h1'),
    );
  }
}

class H2 extends StatelessWidget {
  final String? text;
  final TextAlign? textAlign;
  const H2({super.key, required this.text, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return EtMineText(
      text: text,
      textAlign: textAlign,
      colorText: h2Color,
      fontSize: h2Size,
      key: key,
    );
  }
}

class SubTitle extends StatelessWidget {
  final String? text;
  final TextAlign? textAlign;
  final Color? textColor;
  const SubTitle(
      {super.key,
      required this.text,
      this.textAlign,
      this.textColor = subTitleColor});

  @override
  Widget build(BuildContext context) {
    return EtMineText(
      text: text,
      textAlign: textAlign,
      colorText: textColor,
      fontSize: subTitleSize,
      key: key,
    );
  }
}

class NormalText extends StatelessWidget {
  final String? text;
  final TextAlign? textAlign;
  const NormalText({super.key, this.text, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return EtMineText(
      text: text,
      textAlign: textAlign,
      colorText: contentColor,
      fontSize: contentSize,
      key: key,
    );
  }
}

class ToolTipText extends StatelessWidget {
  final String? text;
  final TextAlign? textAlign;
  const ToolTipText({super.key, this.text, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return EtMineText(
      text: text,
      textAlign: textAlign,
      colorText: contentColor,
      fontSize: toolTipSize,
      key: key,
    );
  }
}

class EtMineRichText extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final int? maxLines;
  const EtMineRichText(
      {super.key, required this.text, required this.textAlign, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return RichText(
        maxLines: maxLines,
        textAlign: textAlign,
        text: TextSpan(
            text: text,
            style:
                const TextStyle(fontSize: contentSize, color: contentColor)));
  }
}
