import 'package:etmine_design_appeco/atoms/em_text.dart';
import 'package:etmine_design_appeco/fundation/em_colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class EtMineAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool back;
  final Icon? iconTexto;
  final IconButton? iconButtonPrincipal;
  final IconButton? iconButtonSecondary;
  final String? texto;

  const EtMineAppBar(
      {super.key,
      this.title = 'Design AppEco',
      this.back = false,
      this.iconTexto,
      this.iconButtonPrincipal,
      this.iconButtonSecondary,
      this.texto});

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
              margin: const EdgeInsets.only(left: 10.00),
              child: H2(text: texto ?? ''),
            )
          ],
        ),
        iconButtonPrincipal ?? Container(),
        iconButtonSecondary ?? Container()
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
