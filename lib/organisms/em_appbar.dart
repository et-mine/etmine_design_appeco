import 'package:etmine_design_appeco/atoms/em_text.dart';
import 'package:etmine_design_appeco/fundation/em_colors.dart';
import 'package:flutter/material.dart';

class EtMineAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool back;
  final Icon? iconTexto;
  final String? textoIcono;
  final IconButton? iconButtonPrincipal;
  final IconButton? iconButtonSecondary;

  const EtMineAppBar(
      {super.key,
      this.title = 'Design AppEco',
      this.back = false,
      this.iconTexto,
      this.iconButtonPrincipal,
      this.iconButtonSecondary,
      this.textoIcono});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBarDetails,
      centerTitle: true,
      title: H1(
        text: title,
        key: const Key('head-em'),
      ),
      leading: back
          ? IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          : null,
      actions: [
        Stack(
          children: [
            iconTexto ?? Container(),
            Container(
              margin: const EdgeInsets.only(left: 20.00),
              child: SubTitle(text: textoIcono ?? ''),
            )
          ],
        ),
        iconButtonPrincipal ?? Container(),
        iconButtonSecondary ?? Container(),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
